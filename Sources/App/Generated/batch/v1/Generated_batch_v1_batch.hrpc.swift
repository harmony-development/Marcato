import Vapor
import SwiftProtobuf
import Foundation
protocol BatchServiceServer {
	func Batch (req: Request, in: Protocol_Batch_V1_BatchRequest) async throws -> Protocol_Batch_V1_BatchResponse
	func BatchSame (req: Request, in: Protocol_Batch_V1_BatchSameRequest) async throws -> Protocol_Batch_V1_BatchSameResponse
}
extension BatchServiceServer {
	func Batch (req: Request, in: Protocol_Batch_V1_BatchRequest) async throws -> Protocol_Batch_V1_BatchResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func BatchSame (req: Request, in: Protocol_Batch_V1_BatchSameRequest) async throws -> Protocol_Batch_V1_BatchSameResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func registerRoutes(withBuilder builder: RoutesBuilder) {
		builder.group("protocol.batch.v1.BatchService") { builder in
			builder.post("Batch") { request -> Response in
				do {
					let message: Protocol_Batch_V1_BatchRequest = try request.decodeMessage()
					let response = try await self.Batch(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("BatchSame") { request -> Response in
				do {
					let message: Protocol_Batch_V1_BatchSameRequest = try request.decodeMessage()
					let response = try await self.BatchSame(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
		}
	}
}
