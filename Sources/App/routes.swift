import Fluent
import Vapor

class MarcatoServer {
    let authKitV1 = AuthKitV1()
    let chatKitV1 = ChatKitV1()
    let mediaProxyV1 = MediaProxyV1()
    let syncV1 = SyncV1()
    let voiceKitV1 = VoiceKitV1()
}

func routes(_ app: Application) {
    let server = MarcatoServer()

    server.authKitV1.registerRoutes(withBuilder: app)
    server.chatKitV1.registerRoutes(withBuilder: app)
    server.mediaProxyV1.registerRoutes(withBuilder: app)
    server.syncV1.registerRoutes(withBuilder: app)
    server.voiceKitV1.registerRoutes(withBuilder: app)
}
