import Vapor
import SwiftProtobuf
import Foundation
protocol PostboxServiceServer {
	func Pull (req: Request, in: Google_Protobuf_Empty) throws -> Protocol_Sync_V1_EventQueue
	func Push (req: Request, in: Protocol_Sync_V1_Event) throws -> Google_Protobuf_Empty
}
extension PostboxServiceServer {
	func Pull (req: Request, in: Google_Protobuf_Empty) throws -> Protocol_Sync_V1_EventQueue { throw Abort(.internalServerError, reason: "unimplemented") }
	func Push (req: Request, in: Protocol_Sync_V1_Event) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func registerRoutes(withBuilder builder: RoutesBuilder) {
		builder.post("/protocol.sync.v1.PostboxService/Pull") { request -> Response in
			do {
				let message: Google_Protobuf_Empty = try request.decodeMessage()
				let response = try self.Pull(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
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
