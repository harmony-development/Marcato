import Vapor
import SwiftProtobuf
import Foundation
protocol PostboxServiceServer {
	func Pull (req: Request, in: Protocol_Sync_V1_PullRequest) async throws -> Protocol_Sync_V1_PullResponse
	func Push (req: Request, in: Protocol_Sync_V1_PushRequest) async throws -> Protocol_Sync_V1_PushResponse
	func NotifyNewId (req: Request, in: Protocol_Sync_V1_NotifyNewIdRequest) async throws -> Protocol_Sync_V1_NotifyNewIdResponse
}
extension PostboxServiceServer {
	func Pull (req: Request, in: Protocol_Sync_V1_PullRequest) async throws -> Protocol_Sync_V1_PullResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func Push (req: Request, in: Protocol_Sync_V1_PushRequest) async throws -> Protocol_Sync_V1_PushResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func NotifyNewId (req: Request, in: Protocol_Sync_V1_NotifyNewIdRequest) async throws -> Protocol_Sync_V1_NotifyNewIdResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func registerRoutes(withBuilder builder: RoutesBuilder) {
		builder.group("protocol.sync.v1.PostboxService") { builder in
			builder.post("Pull") { request -> Response in
				do {
					let message: Protocol_Sync_V1_PullRequest = try request.decodeMessage()
					let response = try await self.Pull(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("Push") { request -> Response in
				do {
					let message: Protocol_Sync_V1_PushRequest = try request.decodeMessage()
					let response = try await self.Push(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("NotifyNewId") { request -> Response in
				do {
					let message: Protocol_Sync_V1_NotifyNewIdRequest = try request.decodeMessage()
					let response = try await self.NotifyNewId(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
		}
	}
}
