import Vapor
import SwiftProtobuf
import Foundation
protocol EmoteServiceServer {
	func CreateEmotePack (req: Request, in: Protocol_Emote_V1_CreateEmotePackRequest) async throws -> Protocol_Emote_V1_CreateEmotePackResponse
	func GetEmotePacks (req: Request, in: Protocol_Emote_V1_GetEmotePacksRequest) async throws -> Protocol_Emote_V1_GetEmotePacksResponse
	func GetEmotePackEmotes (req: Request, in: Protocol_Emote_V1_GetEmotePackEmotesRequest) async throws -> Protocol_Emote_V1_GetEmotePackEmotesResponse
	func AddEmoteToPack (req: Request, in: Protocol_Emote_V1_AddEmoteToPackRequest) async throws -> Protocol_Emote_V1_AddEmoteToPackResponse
	func DeleteEmotePack (req: Request, in: Protocol_Emote_V1_DeleteEmotePackRequest) async throws -> Protocol_Emote_V1_DeleteEmotePackResponse
	func DeleteEmoteFromPack (req: Request, in: Protocol_Emote_V1_DeleteEmoteFromPackRequest) async throws -> Protocol_Emote_V1_DeleteEmoteFromPackResponse
	func DequipEmotePack (req: Request, in: Protocol_Emote_V1_DequipEmotePackRequest) async throws -> Protocol_Emote_V1_DequipEmotePackResponse
	func EquipEmotePack (req: Request, in: Protocol_Emote_V1_EquipEmotePackRequest) async throws -> Protocol_Emote_V1_EquipEmotePackResponse
}
extension EmoteServiceServer {
	func CreateEmotePack (req: Request, in: Protocol_Emote_V1_CreateEmotePackRequest) async throws -> Protocol_Emote_V1_CreateEmotePackResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetEmotePacks (req: Request, in: Protocol_Emote_V1_GetEmotePacksRequest) async throws -> Protocol_Emote_V1_GetEmotePacksResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetEmotePackEmotes (req: Request, in: Protocol_Emote_V1_GetEmotePackEmotesRequest) async throws -> Protocol_Emote_V1_GetEmotePackEmotesResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func AddEmoteToPack (req: Request, in: Protocol_Emote_V1_AddEmoteToPackRequest) async throws -> Protocol_Emote_V1_AddEmoteToPackResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteEmotePack (req: Request, in: Protocol_Emote_V1_DeleteEmotePackRequest) async throws -> Protocol_Emote_V1_DeleteEmotePackResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteEmoteFromPack (req: Request, in: Protocol_Emote_V1_DeleteEmoteFromPackRequest) async throws -> Protocol_Emote_V1_DeleteEmoteFromPackResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func DequipEmotePack (req: Request, in: Protocol_Emote_V1_DequipEmotePackRequest) async throws -> Protocol_Emote_V1_DequipEmotePackResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func EquipEmotePack (req: Request, in: Protocol_Emote_V1_EquipEmotePackRequest) async throws -> Protocol_Emote_V1_EquipEmotePackResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func registerRoutes(withBuilder builder: RoutesBuilder) {
		builder.group("protocol.emote.v1.EmoteService") { builder in
			builder.post("CreateEmotePack") { request -> Response in
				do {
					let message: Protocol_Emote_V1_CreateEmotePackRequest = try request.decodeMessage()
					let response = try await self.CreateEmotePack(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetEmotePacks") { request -> Response in
				do {
					let message: Protocol_Emote_V1_GetEmotePacksRequest = try request.decodeMessage()
					let response = try await self.GetEmotePacks(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetEmotePackEmotes") { request -> Response in
				do {
					let message: Protocol_Emote_V1_GetEmotePackEmotesRequest = try request.decodeMessage()
					let response = try await self.GetEmotePackEmotes(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("AddEmoteToPack") { request -> Response in
				do {
					let message: Protocol_Emote_V1_AddEmoteToPackRequest = try request.decodeMessage()
					let response = try await self.AddEmoteToPack(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("DeleteEmotePack") { request -> Response in
				do {
					let message: Protocol_Emote_V1_DeleteEmotePackRequest = try request.decodeMessage()
					let response = try await self.DeleteEmotePack(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("DeleteEmoteFromPack") { request -> Response in
				do {
					let message: Protocol_Emote_V1_DeleteEmoteFromPackRequest = try request.decodeMessage()
					let response = try await self.DeleteEmoteFromPack(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("DequipEmotePack") { request -> Response in
				do {
					let message: Protocol_Emote_V1_DequipEmotePackRequest = try request.decodeMessage()
					let response = try await self.DequipEmotePack(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("EquipEmotePack") { request -> Response in
				do {
					let message: Protocol_Emote_V1_EquipEmotePackRequest = try request.decodeMessage()
					let response = try await self.EquipEmotePack(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
		}
	}
}
