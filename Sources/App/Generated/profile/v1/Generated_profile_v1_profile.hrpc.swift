import Vapor
import SwiftProtobuf
import Foundation
protocol ProfileServiceServer {
	func GetProfile (req: Request, in: Protocol_Profile_V1_GetProfileRequest) async throws -> Protocol_Profile_V1_GetProfileResponse
	func UpdateProfile (req: Request, in: Protocol_Profile_V1_UpdateProfileRequest) async throws -> Protocol_Profile_V1_UpdateProfileResponse
	func GetAppData (req: Request, in: Protocol_Profile_V1_GetAppDataRequest) async throws -> Protocol_Profile_V1_GetAppDataResponse
	func SetAppData (req: Request, in: Protocol_Profile_V1_SetAppDataRequest) async throws -> Protocol_Profile_V1_SetAppDataResponse
}
extension ProfileServiceServer {
	func GetProfile (req: Request, in: Protocol_Profile_V1_GetProfileRequest) async throws -> Protocol_Profile_V1_GetProfileResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func UpdateProfile (req: Request, in: Protocol_Profile_V1_UpdateProfileRequest) async throws -> Protocol_Profile_V1_UpdateProfileResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetAppData (req: Request, in: Protocol_Profile_V1_GetAppDataRequest) async throws -> Protocol_Profile_V1_GetAppDataResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func SetAppData (req: Request, in: Protocol_Profile_V1_SetAppDataRequest) async throws -> Protocol_Profile_V1_SetAppDataResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func registerRoutes(withBuilder builder: RoutesBuilder) {
		builder.group("protocol.profile.v1.ProfileService") { builder in
			builder.post("GetProfile") { request -> Response in
				do {
					let message: Protocol_Profile_V1_GetProfileRequest = try request.decodeMessage()
					let response = try await self.GetProfile(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("UpdateProfile") { request -> Response in
				do {
					let message: Protocol_Profile_V1_UpdateProfileRequest = try request.decodeMessage()
					let response = try await self.UpdateProfile(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetAppData") { request -> Response in
				do {
					let message: Protocol_Profile_V1_GetAppDataRequest = try request.decodeMessage()
					let response = try await self.GetAppData(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("SetAppData") { request -> Response in
				do {
					let message: Protocol_Profile_V1_SetAppDataRequest = try request.decodeMessage()
					let response = try await self.SetAppData(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
		}
	}
}
