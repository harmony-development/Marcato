import Fluent
import Vapor
import Redis
import SwiftProtobuf

enum AuthStatus: Codable {
    case beforeInitial
    case initialScreen
    case loginScreen
    case registerScreen
}

struct AuthContext: Codable {
    var status: AuthStatus = .beforeInitial
}

struct Session: Codable {
    var userID: UInt64
}

func randomString(length: Int) -> String {
    let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    return String((0..<length).map{ _ in letters.randomElement()! })
}

class AuthKitV1 : AuthServiceServer {
    func BeginAuth(req: Request, in: Protocol_Auth_V1_BeginAuthRequest) async throws -> Protocol_Auth_V1_BeginAuthResponse {
        var it = Protocol_Auth_V1_BeginAuthResponse()
        it.authID = randomString(length: 10)
        try await req.redis.set("auth/\(it.authID)", toJSON: AuthContext())
        return it
    }
    func NextStep(req: Request, in context: Protocol_Auth_V1_NextStepRequest) async throws -> Protocol_Auth_V1_NextStepResponse {
        guard var ctx = try await req.redis.get("auth/\(context.authID)", asJSON: AuthContext.self) else {
            throw Abort(.badRequest)
        }

        var step = Protocol_Auth_V1_AuthStep()

        switch ctx.status {
        case .beforeInitial:
            ctx.status = .initialScreen
            step = Protocol_Auth_V1_AuthStep.with {
                $0.choice = Protocol_Auth_V1_AuthStep.Choice.with {
                    $0.title = "initial-choice"
                    $0.options = ["login", "register"]
                }
            }
        case .initialScreen where context.choice.choice == "login":
            ctx.status = .loginScreen
            step = .with {
                $0.form = .with {
                    $0.title = "login"
                    $0.fields = [
                        .with {
                            $0.type = "email"
                            $0.name = "email"
                        },
                        .with {
                            $0.type = "password"
                            $0.name = "password"
                        },
                    ]
                }
            }
        case .initialScreen where context.choice.choice == "register":
            ctx.status = .registerScreen
            step = .with {
                $0.form = .with {
                    $0.title = "register"
                    $0.fields = [
                        .with {
                            $0.type = "email"
                            $0.name = "email"
                        },
                        .with {
                            $0.type = "username"
                            $0.name = "username"
                        },
                        .with {
                            $0.type = "new-password"
                            $0.name = "password"
                        },
                    ]
                }
            }
        case .loginScreen:
            let fields = context.form.fields
            guard fields.count == 2 else {
                throw Abort(.badRequest)
            }

            let email = fields[0].string
            let password = fields[1].bytes

            guard let user = try await LocalUser.query(on: req.db)
                .filter(\.$email == email)
                .with(\.$user)
                .first() else {
                    throw Abort(.notFound)
                }

            guard try req.password.verify(password, created: user.password)
            else {
                throw Abort(.unauthorized)
            }

            let token = randomString(length: 64)
            let key: RedisKey = "sessions/\(token)"

            try await req.redis.set(key, toJSON: Session(userID: user.user.id!))
            _ = try await req.redis.expire(key, after: .hours(24 * 7)).get()

            return .with {
                $0.step = .with {
                    $0.session = .with {
                        $0.sessionToken = token
                        $0.userID = user.user.id!
                    }
                }
            }
        case .registerScreen:
            let fields = context.form.fields
            guard fields.count == 3 else {
                throw Abort(.badRequest)
            }

            let email = fields[0].string
            let username = fields[1].string
            let password = fields[2].bytes
            let hashed = try await req.password.async.hash(password)

            let localUser =
                LocalUser(
                    email: email,
                    password: Data(hashed)
                )
            let user =
                User(
                    id: UInt64.random(),
                    username: username,
                    forLocalUser: localUser
                )

            return try await req.db.transaction { db in
                try await user.create(on: db)
                try await localUser.create(on: db)

                let token = randomString(length: 64)
                let key: RedisKey = "sessions/\(token)"

                try await req.redis.set(key, toJSON: Session(userID: user.id!))
                _ = try await req.redis.expire(key, after: .hours(24 * 7)).get()

                return .with {
                    $0.step = .with {
                        $0.session = .with {
                            $0.sessionToken = token
                            $0.userID = user.id!
                        }
                    }
                }
            }
        default:
            throw Abort(.badRequest)
        }

        try await req.redis.set("auth/\(context.authID)", toJSON: ctx)

        req.redis.publish(RedisMessage<Protocol_Auth_V1_AuthStep>(step), to: "auth/\(context.authID)")

        var resp = Protocol_Auth_V1_NextStepResponse()
        resp.step = step

        return resp
    }
}
