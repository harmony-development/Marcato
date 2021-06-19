import Vapor
import SwiftProtobuf
import Foundation
protocol PostboxServiceServer {
	func Pull (req: Request, out: (Protocol_Sync_V1_Syn) -> Void) -> (Protocol_Sync_V1_Ack) -> Void
	func Push (req: Request, in: Protocol_Sync_V1_Event) throws -> Google_Protobuf_Empty
}
extension PostboxServiceServer {
	func Pull (req: Request, out: (Protocol_Sync_V1_Syn) -> Void) -> (Protocol_Sync_V1_Ack) -> Void { return { _ in } }
	func Push (req: Request, in: Protocol_Sync_V1_Event) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func registerRoutes(withBuilder builder: RoutesBuilder) {
		builder.webSocket("/protocol.sync.v1.PostboxService/Pull") { request, ws in
			let callback = self.Pull(req: request) { message in
				do {
					ws.send([UInt8](try message.serializedData()))
				} catch {
					_ = ws.close()
				}
			}
			ws.onBinary { ws, bb in
				do {
					try callback(Protocol_Sync_V1_Ack(serializedData: bb.allData()))
				} catch {
					_ = ws.close()
				}
			}
		}
		builder.post("/protocol.sync.v1.PostboxService/Push") { request -> Response in
			do {
				let message: Protocol_Sync_V1_Event = try request.decodeMessage()
				let response = try self.Push(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
	}
}
