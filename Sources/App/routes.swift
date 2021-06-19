import Fluent
import Vapor

struct Server: MediaProxyServiceServer {

}

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }

    app.post("route") { req -> String in
        ""
    }

    app.webSocket("foo") { req, ws in
        ws.onBinary { ws, bb in
            ws.send([UInt8](bb.allData()))
        }
    }

    try app.register(collection: TodoController())
}
