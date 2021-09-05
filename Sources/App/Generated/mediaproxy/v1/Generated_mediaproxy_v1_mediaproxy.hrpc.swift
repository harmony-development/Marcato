import Vapor
import SwiftProtobuf
import Foundation
protocol MediaProxyServiceServer {
	func FetchLinkMetadata (req: Request, in: Protocol_Mediaproxy_V1_FetchLinkMetadataRequest) async throws -> Protocol_Mediaproxy_V1_FetchLinkMetadataResponse
	func InstantView (req: Request, in: Protocol_Mediaproxy_V1_InstantViewRequest) async throws -> Protocol_Mediaproxy_V1_InstantViewResponse
	func CanInstantView (req: Request, in: Protocol_Mediaproxy_V1_CanInstantViewRequest) async throws -> Protocol_Mediaproxy_V1_CanInstantViewResponse
}
extension MediaProxyServiceServer {
	func FetchLinkMetadata (req: Request, in: Protocol_Mediaproxy_V1_FetchLinkMetadataRequest) async throws -> Protocol_Mediaproxy_V1_FetchLinkMetadataResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func InstantView (req: Request, in: Protocol_Mediaproxy_V1_InstantViewRequest) async throws -> Protocol_Mediaproxy_V1_InstantViewResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func CanInstantView (req: Request, in: Protocol_Mediaproxy_V1_CanInstantViewRequest) async throws -> Protocol_Mediaproxy_V1_CanInstantViewResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func registerRoutes(withBuilder builder: RoutesBuilder) {
		builder.group("protocol.mediaproxy.v1.MediaProxyService") { builder in
			builder.post("FetchLinkMetadata") { request -> Response in
				do {
					let message: Protocol_Mediaproxy_V1_FetchLinkMetadataRequest = try request.decodeMessage()
					let response = try await self.FetchLinkMetadata(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("InstantView") { request -> Response in
				do {
					let message: Protocol_Mediaproxy_V1_InstantViewRequest = try request.decodeMessage()
					let response = try await self.InstantView(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("CanInstantView") { request -> Response in
				do {
					let message: Protocol_Mediaproxy_V1_CanInstantViewRequest = try request.decodeMessage()
					let response = try await self.CanInstantView(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
		}
	}
}
