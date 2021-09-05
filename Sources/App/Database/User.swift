import Fluent
import Vapor

final class LocalUser : Model {
    static let schema = "local_user"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "email")
    var email: String

    @Field(key: "password")
    var password: Data

    @Parent(key: "user_id")
    var user: User

    init() { }

    init(email: String, password: Data) {
        self.email = email
        self.password = password
    }
}

final class ForeignUser : Model {
    static let schema = "foreign_user"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "foreign_id")
    var foreignID: UInt64

    @Field(key: "host")
    var host: String

    @Parent(key: "user_id")
    var user: User

    init() { }
}

final class User : Model {
    static let schema = "user"

    @ID(custom: "id", generatedBy: .user)
    var id: UInt64?

    @Field(key: "username")
    var username: String

    @OptionalChild(for: \.$user)
    var localUser: LocalUser?

    @OptionalChild(for: \.$user)
    var foreignUser: ForeignUser?

    init() { }

    init(id: UInt64, username: String, forLocalUser localUser: LocalUser) {
        self.id = id
        self.username = username
        localUser.$user.id = id
    }
    init(id: UInt64, username: String, forForeignUser foreignUser: ForeignUser) {
        self.id = id
        self.username = username
        foreignUser.$user.id = id
    }
}

struct CreateUser : Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema(User.schema)
            .field("id", .uint64, .required)
            .field("username", .string, .required)
            .unique(on: "id")
            .create()
    }
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema(User.schema).delete()
    }
}

struct CreateLocalUser : Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema(LocalUser.schema)
            .id()
            .field("email", .string, .required)
            .field("password", .data, .required)
            .field("user_id", .uint64, .required, .references(User.schema, "id"))
            .unique(on: "user_id")
            .create()
    }
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema(LocalUser.schema).delete()
    }
}

struct CreateForeignUser : Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema(ForeignUser.schema)
            .id()
            .field("foreign_id", .uint64, .required)
            .field("host", .string, .required)
            .field("user_id", .uint64, .required, .references(User.schema, "id"))
            .unique(on: "user_id")
            .create()
    }
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema(ForeignUser.schema).delete()
    }
}
