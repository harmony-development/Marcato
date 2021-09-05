import Vapor
import SwiftProtobuf
import Foundation
protocol ChatServiceServer {
	func CreateGuild (req: Request, in: Protocol_Chat_V1_CreateGuildRequest) async throws -> Protocol_Chat_V1_CreateGuildResponse
	func CreateRoom (req: Request, in: Protocol_Chat_V1_CreateRoomRequest) async throws -> Protocol_Chat_V1_CreateRoomResponse
	func CreateDirectMessage (req: Request, in: Protocol_Chat_V1_CreateDirectMessageRequest) async throws -> Protocol_Chat_V1_CreateDirectMessageResponse
	func UpgradeRoomToGuild (req: Request, in: Protocol_Chat_V1_UpgradeRoomToGuildRequest) async throws -> Protocol_Chat_V1_UpgradeRoomToGuildResponse
	func CreateInvite (req: Request, in: Protocol_Chat_V1_CreateInviteRequest) async throws -> Protocol_Chat_V1_CreateInviteResponse
	func CreateChannel (req: Request, in: Protocol_Chat_V1_CreateChannelRequest) async throws -> Protocol_Chat_V1_CreateChannelResponse
	func GetGuildList (req: Request, in: Protocol_Chat_V1_GetGuildListRequest) async throws -> Protocol_Chat_V1_GetGuildListResponse
	func InviteUserToGuild (req: Request, in: Protocol_Chat_V1_InviteUserToGuildRequest) async throws -> Protocol_Chat_V1_InviteUserToGuildResponse
	func GetPendingInvites (req: Request, in: Protocol_Chat_V1_GetPendingInvitesRequest) async throws -> Protocol_Chat_V1_GetPendingInvitesResponse
	func RejectPendingInvite (req: Request, in: Protocol_Chat_V1_RejectPendingInviteRequest) async throws -> Protocol_Chat_V1_RejectPendingInviteResponse
	func IgnorePendingInvite (req: Request, in: Protocol_Chat_V1_IgnorePendingInviteRequest) async throws -> Protocol_Chat_V1_IgnorePendingInviteResponse
	func GetGuild (req: Request, in: Protocol_Chat_V1_GetGuildRequest) async throws -> Protocol_Chat_V1_GetGuildResponse
	func GetGuildInvites (req: Request, in: Protocol_Chat_V1_GetGuildInvitesRequest) async throws -> Protocol_Chat_V1_GetGuildInvitesResponse
	func GetGuildMembers (req: Request, in: Protocol_Chat_V1_GetGuildMembersRequest) async throws -> Protocol_Chat_V1_GetGuildMembersResponse
	func GetGuildChannels (req: Request, in: Protocol_Chat_V1_GetGuildChannelsRequest) async throws -> Protocol_Chat_V1_GetGuildChannelsResponse
	func GetChannelMessages (req: Request, in: Protocol_Chat_V1_GetChannelMessagesRequest) async throws -> Protocol_Chat_V1_GetChannelMessagesResponse
	func GetMessage (req: Request, in: Protocol_Chat_V1_GetMessageRequest) async throws -> Protocol_Chat_V1_GetMessageResponse
	func UpdateGuildInformation (req: Request, in: Protocol_Chat_V1_UpdateGuildInformationRequest) async throws -> Protocol_Chat_V1_UpdateGuildInformationResponse
	func UpdateChannelInformation (req: Request, in: Protocol_Chat_V1_UpdateChannelInformationRequest) async throws -> Protocol_Chat_V1_UpdateChannelInformationResponse
	func UpdateChannelOrder (req: Request, in: Protocol_Chat_V1_UpdateChannelOrderRequest) async throws -> Protocol_Chat_V1_UpdateChannelOrderResponse
	func UpdateAllChannelOrder (req: Request, in: Protocol_Chat_V1_UpdateAllChannelOrderRequest) async throws -> Protocol_Chat_V1_UpdateAllChannelOrderResponse
	func UpdateMessageText (req: Request, in: Protocol_Chat_V1_UpdateMessageTextRequest) async throws -> Protocol_Chat_V1_UpdateMessageTextResponse
	func DeleteGuild (req: Request, in: Protocol_Chat_V1_DeleteGuildRequest) async throws -> Protocol_Chat_V1_DeleteGuildResponse
	func DeleteInvite (req: Request, in: Protocol_Chat_V1_DeleteInviteRequest) async throws -> Protocol_Chat_V1_DeleteInviteResponse
	func DeleteChannel (req: Request, in: Protocol_Chat_V1_DeleteChannelRequest) async throws -> Protocol_Chat_V1_DeleteChannelResponse
	func DeleteMessage (req: Request, in: Protocol_Chat_V1_DeleteMessageRequest) async throws -> Protocol_Chat_V1_DeleteMessageResponse
	func JoinGuild (req: Request, in: Protocol_Chat_V1_JoinGuildRequest) async throws -> Protocol_Chat_V1_JoinGuildResponse
	func LeaveGuild (req: Request, in: Protocol_Chat_V1_LeaveGuildRequest) async throws -> Protocol_Chat_V1_LeaveGuildResponse
	func TriggerAction (req: Request, in: Protocol_Chat_V1_TriggerActionRequest) async throws -> Protocol_Chat_V1_TriggerActionResponse
	func SendMessage (req: Request, in: Protocol_Chat_V1_SendMessageRequest) async throws -> Protocol_Chat_V1_SendMessageResponse
	func QueryHasPermission (req: Request, in: Protocol_Chat_V1_QueryHasPermissionRequest) async throws -> Protocol_Chat_V1_QueryHasPermissionResponse
	func SetPermissions (req: Request, in: Protocol_Chat_V1_SetPermissionsRequest) async throws -> Protocol_Chat_V1_SetPermissionsResponse
	func GetPermissions (req: Request, in: Protocol_Chat_V1_GetPermissionsRequest) async throws -> Protocol_Chat_V1_GetPermissionsResponse
	func MoveRole (req: Request, in: Protocol_Chat_V1_MoveRoleRequest) async throws -> Protocol_Chat_V1_MoveRoleResponse
	func GetGuildRoles (req: Request, in: Protocol_Chat_V1_GetGuildRolesRequest) async throws -> Protocol_Chat_V1_GetGuildRolesResponse
	func AddGuildRole (req: Request, in: Protocol_Chat_V1_AddGuildRoleRequest) async throws -> Protocol_Chat_V1_AddGuildRoleResponse
	func ModifyGuildRole (req: Request, in: Protocol_Chat_V1_ModifyGuildRoleRequest) async throws -> Protocol_Chat_V1_ModifyGuildRoleResponse
	func DeleteGuildRole (req: Request, in: Protocol_Chat_V1_DeleteGuildRoleRequest) async throws -> Protocol_Chat_V1_DeleteGuildRoleResponse
	func ManageUserRoles (req: Request, in: Protocol_Chat_V1_ManageUserRolesRequest) async throws -> Protocol_Chat_V1_ManageUserRolesResponse
	func GetUserRoles (req: Request, in: Protocol_Chat_V1_GetUserRolesRequest) async throws -> Protocol_Chat_V1_GetUserRolesResponse
	func Typing (req: Request, in: Protocol_Chat_V1_TypingRequest) async throws -> Protocol_Chat_V1_TypingResponse
	func PreviewGuild (req: Request, in: Protocol_Chat_V1_PreviewGuildRequest) async throws -> Protocol_Chat_V1_PreviewGuildResponse
	func GetBannedUsers (req: Request, in: Protocol_Chat_V1_GetBannedUsersRequest) async throws -> Protocol_Chat_V1_GetBannedUsersResponse
	func BanUser (req: Request, in: Protocol_Chat_V1_BanUserRequest) async throws -> Protocol_Chat_V1_BanUserResponse
	func KickUser (req: Request, in: Protocol_Chat_V1_KickUserRequest) async throws -> Protocol_Chat_V1_KickUserResponse
	func UnbanUser (req: Request, in: Protocol_Chat_V1_UnbanUserRequest) async throws -> Protocol_Chat_V1_UnbanUserResponse
	func GetPinnedMessages (req: Request, in: Protocol_Chat_V1_GetPinnedMessagesRequest) async throws -> Protocol_Chat_V1_GetPinnedMessagesResponse
	func PinMessage (req: Request, in: Protocol_Chat_V1_PinMessageRequest) async throws -> Protocol_Chat_V1_PinMessageResponse
	func UnpinMessage (req: Request, in: Protocol_Chat_V1_UnpinMessageRequest) async throws -> Protocol_Chat_V1_UnpinMessageResponse
	func StreamEvents (req: Request, out: (Protocol_Chat_V1_StreamEventsResponse) -> Void) -> (Protocol_Chat_V1_StreamEventsRequest) -> Void
	func AddReaction (req: Request, in: Protocol_Chat_V1_AddReactionRequest) async throws -> Protocol_Chat_V1_AddReactionResponse
	func RemoveReaction (req: Request, in: Protocol_Chat_V1_RemoveReactionRequest) async throws -> Protocol_Chat_V1_RemoveReactionResponse
	func GrantOwnership (req: Request, in: Protocol_Chat_V1_GrantOwnershipRequest) async throws -> Protocol_Chat_V1_GrantOwnershipResponse
	func GiveUpOwnership (req: Request, in: Protocol_Chat_V1_GiveUpOwnershipRequest) async throws -> Protocol_Chat_V1_GiveUpOwnershipResponse
}
extension ChatServiceServer {
	func CreateGuild (req: Request, in: Protocol_Chat_V1_CreateGuildRequest) async throws -> Protocol_Chat_V1_CreateGuildResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func CreateRoom (req: Request, in: Protocol_Chat_V1_CreateRoomRequest) async throws -> Protocol_Chat_V1_CreateRoomResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func CreateDirectMessage (req: Request, in: Protocol_Chat_V1_CreateDirectMessageRequest) async throws -> Protocol_Chat_V1_CreateDirectMessageResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func UpgradeRoomToGuild (req: Request, in: Protocol_Chat_V1_UpgradeRoomToGuildRequest) async throws -> Protocol_Chat_V1_UpgradeRoomToGuildResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func CreateInvite (req: Request, in: Protocol_Chat_V1_CreateInviteRequest) async throws -> Protocol_Chat_V1_CreateInviteResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func CreateChannel (req: Request, in: Protocol_Chat_V1_CreateChannelRequest) async throws -> Protocol_Chat_V1_CreateChannelResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetGuildList (req: Request, in: Protocol_Chat_V1_GetGuildListRequest) async throws -> Protocol_Chat_V1_GetGuildListResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func InviteUserToGuild (req: Request, in: Protocol_Chat_V1_InviteUserToGuildRequest) async throws -> Protocol_Chat_V1_InviteUserToGuildResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetPendingInvites (req: Request, in: Protocol_Chat_V1_GetPendingInvitesRequest) async throws -> Protocol_Chat_V1_GetPendingInvitesResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func RejectPendingInvite (req: Request, in: Protocol_Chat_V1_RejectPendingInviteRequest) async throws -> Protocol_Chat_V1_RejectPendingInviteResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func IgnorePendingInvite (req: Request, in: Protocol_Chat_V1_IgnorePendingInviteRequest) async throws -> Protocol_Chat_V1_IgnorePendingInviteResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetGuild (req: Request, in: Protocol_Chat_V1_GetGuildRequest) async throws -> Protocol_Chat_V1_GetGuildResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetGuildInvites (req: Request, in: Protocol_Chat_V1_GetGuildInvitesRequest) async throws -> Protocol_Chat_V1_GetGuildInvitesResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetGuildMembers (req: Request, in: Protocol_Chat_V1_GetGuildMembersRequest) async throws -> Protocol_Chat_V1_GetGuildMembersResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetGuildChannels (req: Request, in: Protocol_Chat_V1_GetGuildChannelsRequest) async throws -> Protocol_Chat_V1_GetGuildChannelsResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetChannelMessages (req: Request, in: Protocol_Chat_V1_GetChannelMessagesRequest) async throws -> Protocol_Chat_V1_GetChannelMessagesResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetMessage (req: Request, in: Protocol_Chat_V1_GetMessageRequest) async throws -> Protocol_Chat_V1_GetMessageResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func UpdateGuildInformation (req: Request, in: Protocol_Chat_V1_UpdateGuildInformationRequest) async throws -> Protocol_Chat_V1_UpdateGuildInformationResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func UpdateChannelInformation (req: Request, in: Protocol_Chat_V1_UpdateChannelInformationRequest) async throws -> Protocol_Chat_V1_UpdateChannelInformationResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func UpdateChannelOrder (req: Request, in: Protocol_Chat_V1_UpdateChannelOrderRequest) async throws -> Protocol_Chat_V1_UpdateChannelOrderResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func UpdateAllChannelOrder (req: Request, in: Protocol_Chat_V1_UpdateAllChannelOrderRequest) async throws -> Protocol_Chat_V1_UpdateAllChannelOrderResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func UpdateMessageText (req: Request, in: Protocol_Chat_V1_UpdateMessageTextRequest) async throws -> Protocol_Chat_V1_UpdateMessageTextResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteGuild (req: Request, in: Protocol_Chat_V1_DeleteGuildRequest) async throws -> Protocol_Chat_V1_DeleteGuildResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteInvite (req: Request, in: Protocol_Chat_V1_DeleteInviteRequest) async throws -> Protocol_Chat_V1_DeleteInviteResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteChannel (req: Request, in: Protocol_Chat_V1_DeleteChannelRequest) async throws -> Protocol_Chat_V1_DeleteChannelResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteMessage (req: Request, in: Protocol_Chat_V1_DeleteMessageRequest) async throws -> Protocol_Chat_V1_DeleteMessageResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func JoinGuild (req: Request, in: Protocol_Chat_V1_JoinGuildRequest) async throws -> Protocol_Chat_V1_JoinGuildResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func LeaveGuild (req: Request, in: Protocol_Chat_V1_LeaveGuildRequest) async throws -> Protocol_Chat_V1_LeaveGuildResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func TriggerAction (req: Request, in: Protocol_Chat_V1_TriggerActionRequest) async throws -> Protocol_Chat_V1_TriggerActionResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func SendMessage (req: Request, in: Protocol_Chat_V1_SendMessageRequest) async throws -> Protocol_Chat_V1_SendMessageResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func QueryHasPermission (req: Request, in: Protocol_Chat_V1_QueryHasPermissionRequest) async throws -> Protocol_Chat_V1_QueryHasPermissionResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func SetPermissions (req: Request, in: Protocol_Chat_V1_SetPermissionsRequest) async throws -> Protocol_Chat_V1_SetPermissionsResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetPermissions (req: Request, in: Protocol_Chat_V1_GetPermissionsRequest) async throws -> Protocol_Chat_V1_GetPermissionsResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func MoveRole (req: Request, in: Protocol_Chat_V1_MoveRoleRequest) async throws -> Protocol_Chat_V1_MoveRoleResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetGuildRoles (req: Request, in: Protocol_Chat_V1_GetGuildRolesRequest) async throws -> Protocol_Chat_V1_GetGuildRolesResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func AddGuildRole (req: Request, in: Protocol_Chat_V1_AddGuildRoleRequest) async throws -> Protocol_Chat_V1_AddGuildRoleResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func ModifyGuildRole (req: Request, in: Protocol_Chat_V1_ModifyGuildRoleRequest) async throws -> Protocol_Chat_V1_ModifyGuildRoleResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteGuildRole (req: Request, in: Protocol_Chat_V1_DeleteGuildRoleRequest) async throws -> Protocol_Chat_V1_DeleteGuildRoleResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func ManageUserRoles (req: Request, in: Protocol_Chat_V1_ManageUserRolesRequest) async throws -> Protocol_Chat_V1_ManageUserRolesResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetUserRoles (req: Request, in: Protocol_Chat_V1_GetUserRolesRequest) async throws -> Protocol_Chat_V1_GetUserRolesResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func Typing (req: Request, in: Protocol_Chat_V1_TypingRequest) async throws -> Protocol_Chat_V1_TypingResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func PreviewGuild (req: Request, in: Protocol_Chat_V1_PreviewGuildRequest) async throws -> Protocol_Chat_V1_PreviewGuildResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetBannedUsers (req: Request, in: Protocol_Chat_V1_GetBannedUsersRequest) async throws -> Protocol_Chat_V1_GetBannedUsersResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func BanUser (req: Request, in: Protocol_Chat_V1_BanUserRequest) async throws -> Protocol_Chat_V1_BanUserResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func KickUser (req: Request, in: Protocol_Chat_V1_KickUserRequest) async throws -> Protocol_Chat_V1_KickUserResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func UnbanUser (req: Request, in: Protocol_Chat_V1_UnbanUserRequest) async throws -> Protocol_Chat_V1_UnbanUserResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetPinnedMessages (req: Request, in: Protocol_Chat_V1_GetPinnedMessagesRequest) async throws -> Protocol_Chat_V1_GetPinnedMessagesResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func PinMessage (req: Request, in: Protocol_Chat_V1_PinMessageRequest) async throws -> Protocol_Chat_V1_PinMessageResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func UnpinMessage (req: Request, in: Protocol_Chat_V1_UnpinMessageRequest) async throws -> Protocol_Chat_V1_UnpinMessageResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func StreamEvents (req: Request, out: (Protocol_Chat_V1_StreamEventsResponse) -> Void) -> (Protocol_Chat_V1_StreamEventsRequest) -> Void { return { _ in } }
	func AddReaction (req: Request, in: Protocol_Chat_V1_AddReactionRequest) async throws -> Protocol_Chat_V1_AddReactionResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func RemoveReaction (req: Request, in: Protocol_Chat_V1_RemoveReactionRequest) async throws -> Protocol_Chat_V1_RemoveReactionResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GrantOwnership (req: Request, in: Protocol_Chat_V1_GrantOwnershipRequest) async throws -> Protocol_Chat_V1_GrantOwnershipResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GiveUpOwnership (req: Request, in: Protocol_Chat_V1_GiveUpOwnershipRequest) async throws -> Protocol_Chat_V1_GiveUpOwnershipResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func registerRoutes(withBuilder builder: RoutesBuilder) {
		builder.group("protocol.chat.v1.ChatService") { builder in
			builder.post("CreateGuild") { request -> Response in
				do {
					let message: Protocol_Chat_V1_CreateGuildRequest = try request.decodeMessage()
					let response = try await self.CreateGuild(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("CreateRoom") { request -> Response in
				do {
					let message: Protocol_Chat_V1_CreateRoomRequest = try request.decodeMessage()
					let response = try await self.CreateRoom(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("CreateDirectMessage") { request -> Response in
				do {
					let message: Protocol_Chat_V1_CreateDirectMessageRequest = try request.decodeMessage()
					let response = try await self.CreateDirectMessage(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("UpgradeRoomToGuild") { request -> Response in
				do {
					let message: Protocol_Chat_V1_UpgradeRoomToGuildRequest = try request.decodeMessage()
					let response = try await self.UpgradeRoomToGuild(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("CreateInvite") { request -> Response in
				do {
					let message: Protocol_Chat_V1_CreateInviteRequest = try request.decodeMessage()
					let response = try await self.CreateInvite(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("CreateChannel") { request -> Response in
				do {
					let message: Protocol_Chat_V1_CreateChannelRequest = try request.decodeMessage()
					let response = try await self.CreateChannel(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetGuildList") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GetGuildListRequest = try request.decodeMessage()
					let response = try await self.GetGuildList(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("InviteUserToGuild") { request -> Response in
				do {
					let message: Protocol_Chat_V1_InviteUserToGuildRequest = try request.decodeMessage()
					let response = try await self.InviteUserToGuild(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetPendingInvites") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GetPendingInvitesRequest = try request.decodeMessage()
					let response = try await self.GetPendingInvites(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("RejectPendingInvite") { request -> Response in
				do {
					let message: Protocol_Chat_V1_RejectPendingInviteRequest = try request.decodeMessage()
					let response = try await self.RejectPendingInvite(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("IgnorePendingInvite") { request -> Response in
				do {
					let message: Protocol_Chat_V1_IgnorePendingInviteRequest = try request.decodeMessage()
					let response = try await self.IgnorePendingInvite(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetGuild") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GetGuildRequest = try request.decodeMessage()
					let response = try await self.GetGuild(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetGuildInvites") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GetGuildInvitesRequest = try request.decodeMessage()
					let response = try await self.GetGuildInvites(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetGuildMembers") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GetGuildMembersRequest = try request.decodeMessage()
					let response = try await self.GetGuildMembers(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetGuildChannels") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GetGuildChannelsRequest = try request.decodeMessage()
					let response = try await self.GetGuildChannels(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetChannelMessages") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GetChannelMessagesRequest = try request.decodeMessage()
					let response = try await self.GetChannelMessages(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetMessage") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GetMessageRequest = try request.decodeMessage()
					let response = try await self.GetMessage(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("UpdateGuildInformation") { request -> Response in
				do {
					let message: Protocol_Chat_V1_UpdateGuildInformationRequest = try request.decodeMessage()
					let response = try await self.UpdateGuildInformation(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("UpdateChannelInformation") { request -> Response in
				do {
					let message: Protocol_Chat_V1_UpdateChannelInformationRequest = try request.decodeMessage()
					let response = try await self.UpdateChannelInformation(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("UpdateChannelOrder") { request -> Response in
				do {
					let message: Protocol_Chat_V1_UpdateChannelOrderRequest = try request.decodeMessage()
					let response = try await self.UpdateChannelOrder(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("UpdateAllChannelOrder") { request -> Response in
				do {
					let message: Protocol_Chat_V1_UpdateAllChannelOrderRequest = try request.decodeMessage()
					let response = try await self.UpdateAllChannelOrder(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("UpdateMessageText") { request -> Response in
				do {
					let message: Protocol_Chat_V1_UpdateMessageTextRequest = try request.decodeMessage()
					let response = try await self.UpdateMessageText(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("DeleteGuild") { request -> Response in
				do {
					let message: Protocol_Chat_V1_DeleteGuildRequest = try request.decodeMessage()
					let response = try await self.DeleteGuild(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("DeleteInvite") { request -> Response in
				do {
					let message: Protocol_Chat_V1_DeleteInviteRequest = try request.decodeMessage()
					let response = try await self.DeleteInvite(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("DeleteChannel") { request -> Response in
				do {
					let message: Protocol_Chat_V1_DeleteChannelRequest = try request.decodeMessage()
					let response = try await self.DeleteChannel(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("DeleteMessage") { request -> Response in
				do {
					let message: Protocol_Chat_V1_DeleteMessageRequest = try request.decodeMessage()
					let response = try await self.DeleteMessage(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("JoinGuild") { request -> Response in
				do {
					let message: Protocol_Chat_V1_JoinGuildRequest = try request.decodeMessage()
					let response = try await self.JoinGuild(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("LeaveGuild") { request -> Response in
				do {
					let message: Protocol_Chat_V1_LeaveGuildRequest = try request.decodeMessage()
					let response = try await self.LeaveGuild(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("TriggerAction") { request -> Response in
				do {
					let message: Protocol_Chat_V1_TriggerActionRequest = try request.decodeMessage()
					let response = try await self.TriggerAction(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("SendMessage") { request -> Response in
				do {
					let message: Protocol_Chat_V1_SendMessageRequest = try request.decodeMessage()
					let response = try await self.SendMessage(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("QueryHasPermission") { request -> Response in
				do {
					let message: Protocol_Chat_V1_QueryHasPermissionRequest = try request.decodeMessage()
					let response = try await self.QueryHasPermission(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("SetPermissions") { request -> Response in
				do {
					let message: Protocol_Chat_V1_SetPermissionsRequest = try request.decodeMessage()
					let response = try await self.SetPermissions(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetPermissions") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GetPermissionsRequest = try request.decodeMessage()
					let response = try await self.GetPermissions(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("MoveRole") { request -> Response in
				do {
					let message: Protocol_Chat_V1_MoveRoleRequest = try request.decodeMessage()
					let response = try await self.MoveRole(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetGuildRoles") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GetGuildRolesRequest = try request.decodeMessage()
					let response = try await self.GetGuildRoles(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("AddGuildRole") { request -> Response in
				do {
					let message: Protocol_Chat_V1_AddGuildRoleRequest = try request.decodeMessage()
					let response = try await self.AddGuildRole(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("ModifyGuildRole") { request -> Response in
				do {
					let message: Protocol_Chat_V1_ModifyGuildRoleRequest = try request.decodeMessage()
					let response = try await self.ModifyGuildRole(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("DeleteGuildRole") { request -> Response in
				do {
					let message: Protocol_Chat_V1_DeleteGuildRoleRequest = try request.decodeMessage()
					let response = try await self.DeleteGuildRole(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("ManageUserRoles") { request -> Response in
				do {
					let message: Protocol_Chat_V1_ManageUserRolesRequest = try request.decodeMessage()
					let response = try await self.ManageUserRoles(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetUserRoles") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GetUserRolesRequest = try request.decodeMessage()
					let response = try await self.GetUserRoles(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("Typing") { request -> Response in
				do {
					let message: Protocol_Chat_V1_TypingRequest = try request.decodeMessage()
					let response = try await self.Typing(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("PreviewGuild") { request -> Response in
				do {
					let message: Protocol_Chat_V1_PreviewGuildRequest = try request.decodeMessage()
					let response = try await self.PreviewGuild(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetBannedUsers") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GetBannedUsersRequest = try request.decodeMessage()
					let response = try await self.GetBannedUsers(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("BanUser") { request -> Response in
				do {
					let message: Protocol_Chat_V1_BanUserRequest = try request.decodeMessage()
					let response = try await self.BanUser(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("KickUser") { request -> Response in
				do {
					let message: Protocol_Chat_V1_KickUserRequest = try request.decodeMessage()
					let response = try await self.KickUser(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("UnbanUser") { request -> Response in
				do {
					let message: Protocol_Chat_V1_UnbanUserRequest = try request.decodeMessage()
					let response = try await self.UnbanUser(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GetPinnedMessages") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GetPinnedMessagesRequest = try request.decodeMessage()
					let response = try await self.GetPinnedMessages(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("PinMessage") { request -> Response in
				do {
					let message: Protocol_Chat_V1_PinMessageRequest = try request.decodeMessage()
					let response = try await self.PinMessage(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("UnpinMessage") { request -> Response in
				do {
					let message: Protocol_Chat_V1_UnpinMessageRequest = try request.decodeMessage()
					let response = try await self.UnpinMessage(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.webSocket("StreamEvents") { request, ws in
				let callback = self.StreamEvents(req: request) { message in
					do {
						ws.send([UInt8](try message.serializedData()))
					} catch {
						_ = ws.close()
					}
				}
				ws.onBinary { ws, bb in
					do {
						try callback(Protocol_Chat_V1_StreamEventsRequest(serializedData: bb.allData()))
					} catch {
						_ = ws.close()
					}
				}
			}
			builder.post("AddReaction") { request -> Response in
				do {
					let message: Protocol_Chat_V1_AddReactionRequest = try request.decodeMessage()
					let response = try await self.AddReaction(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("RemoveReaction") { request -> Response in
				do {
					let message: Protocol_Chat_V1_RemoveReactionRequest = try request.decodeMessage()
					let response = try await self.RemoveReaction(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GrantOwnership") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GrantOwnershipRequest = try request.decodeMessage()
					let response = try await self.GrantOwnership(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
			builder.post("GiveUpOwnership") { request -> Response in
				do {
					let message: Protocol_Chat_V1_GiveUpOwnershipRequest = try request.decodeMessage()
					let response = try await self.GiveUpOwnership(req: request, in: message)
					return try response.toResponse(on: request)
				} catch {
				throw Abort(.internalServerError, reason: "something did an oops \(error)")
				}
			}
		}
	}
}
