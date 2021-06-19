import Vapor
import SwiftProtobuf
import Foundation
protocol ChatServiceServer {
	func CreateGuild (req: Request, in: Protocol_Chat_V1_CreateGuildRequest) throws -> Protocol_Chat_V1_CreateGuildResponse
	func CreateInvite (req: Request, in: Protocol_Chat_V1_CreateInviteRequest) throws -> Protocol_Chat_V1_CreateInviteResponse
	func CreateChannel (req: Request, in: Protocol_Chat_V1_CreateChannelRequest) throws -> Protocol_Chat_V1_CreateChannelResponse
	func CreateEmotePack (req: Request, in: Protocol_Chat_V1_CreateEmotePackRequest) throws -> Protocol_Chat_V1_CreateEmotePackResponse
	func GetGuildList (req: Request, in: Protocol_Chat_V1_GetGuildListRequest) throws -> Protocol_Chat_V1_GetGuildListResponse
	func GetGuild (req: Request, in: Protocol_Chat_V1_GetGuildRequest) throws -> Protocol_Chat_V1_GetGuildResponse
	func GetGuildInvites (req: Request, in: Protocol_Chat_V1_GetGuildInvitesRequest) throws -> Protocol_Chat_V1_GetGuildInvitesResponse
	func GetGuildMembers (req: Request, in: Protocol_Chat_V1_GetGuildMembersRequest) throws -> Protocol_Chat_V1_GetGuildMembersResponse
	func GetGuildChannels (req: Request, in: Protocol_Chat_V1_GetGuildChannelsRequest) throws -> Protocol_Chat_V1_GetGuildChannelsResponse
	func GetChannelMessages (req: Request, in: Protocol_Chat_V1_GetChannelMessagesRequest) throws -> Protocol_Chat_V1_GetChannelMessagesResponse
	func GetMessage (req: Request, in: Protocol_Chat_V1_GetMessageRequest) throws -> Protocol_Chat_V1_GetMessageResponse
	func GetEmotePacks (req: Request, in: Protocol_Chat_V1_GetEmotePacksRequest) throws -> Protocol_Chat_V1_GetEmotePacksResponse
	func GetEmotePackEmotes (req: Request, in: Protocol_Chat_V1_GetEmotePackEmotesRequest) throws -> Protocol_Chat_V1_GetEmotePackEmotesResponse
	func UpdateGuildInformation (req: Request, in: Protocol_Chat_V1_UpdateGuildInformationRequest) throws -> Google_Protobuf_Empty
	func UpdateChannelInformation (req: Request, in: Protocol_Chat_V1_UpdateChannelInformationRequest) throws -> Google_Protobuf_Empty
	func UpdateChannelOrder (req: Request, in: Protocol_Chat_V1_UpdateChannelOrderRequest) throws -> Google_Protobuf_Empty
	func UpdateMessageText (req: Request, in: Protocol_Chat_V1_UpdateMessageTextRequest) throws -> Google_Protobuf_Empty
	func AddEmoteToPack (req: Request, in: Protocol_Chat_V1_AddEmoteToPackRequest) throws -> Google_Protobuf_Empty
	func DeleteGuild (req: Request, in: Protocol_Chat_V1_DeleteGuildRequest) throws -> Google_Protobuf_Empty
	func DeleteInvite (req: Request, in: Protocol_Chat_V1_DeleteInviteRequest) throws -> Google_Protobuf_Empty
	func DeleteChannel (req: Request, in: Protocol_Chat_V1_DeleteChannelRequest) throws -> Google_Protobuf_Empty
	func DeleteMessage (req: Request, in: Protocol_Chat_V1_DeleteMessageRequest) throws -> Google_Protobuf_Empty
	func DeleteEmoteFromPack (req: Request, in: Protocol_Chat_V1_DeleteEmoteFromPackRequest) throws -> Google_Protobuf_Empty
	func DeleteEmotePack (req: Request, in: Protocol_Chat_V1_DeleteEmotePackRequest) throws -> Google_Protobuf_Empty
	func DequipEmotePack (req: Request, in: Protocol_Chat_V1_DequipEmotePackRequest) throws -> Google_Protobuf_Empty
	func JoinGuild (req: Request, in: Protocol_Chat_V1_JoinGuildRequest) throws -> Protocol_Chat_V1_JoinGuildResponse
	func LeaveGuild (req: Request, in: Protocol_Chat_V1_LeaveGuildRequest) throws -> Google_Protobuf_Empty
	func TriggerAction (req: Request, in: Protocol_Chat_V1_TriggerActionRequest) throws -> Google_Protobuf_Empty
	func SendMessage (req: Request, in: Protocol_Chat_V1_SendMessageRequest) throws -> Protocol_Chat_V1_SendMessageResponse
	func QueryHasPermission (req: Request, in: Protocol_Chat_V1_QueryPermissionsRequest) throws -> Protocol_Chat_V1_QueryPermissionsResponse
	func SetPermissions (req: Request, in: Protocol_Chat_V1_SetPermissionsRequest) throws -> Google_Protobuf_Empty
	func GetPermissions (req: Request, in: Protocol_Chat_V1_GetPermissionsRequest) throws -> Protocol_Chat_V1_GetPermissionsResponse
	func MoveRole (req: Request, in: Protocol_Chat_V1_MoveRoleRequest) throws -> Protocol_Chat_V1_MoveRoleResponse
	func GetGuildRoles (req: Request, in: Protocol_Chat_V1_GetGuildRolesRequest) throws -> Protocol_Chat_V1_GetGuildRolesResponse
	func AddGuildRole (req: Request, in: Protocol_Chat_V1_AddGuildRoleRequest) throws -> Protocol_Chat_V1_AddGuildRoleResponse
	func ModifyGuildRole (req: Request, in: Protocol_Chat_V1_ModifyGuildRoleRequest) throws -> Google_Protobuf_Empty
	func DeleteGuildRole (req: Request, in: Protocol_Chat_V1_DeleteGuildRoleRequest) throws -> Google_Protobuf_Empty
	func ManageUserRoles (req: Request, in: Protocol_Chat_V1_ManageUserRolesRequest) throws -> Google_Protobuf_Empty
	func GetUserRoles (req: Request, in: Protocol_Chat_V1_GetUserRolesRequest) throws -> Protocol_Chat_V1_GetUserRolesResponse
	func StreamEvents (req: Request, out: (Protocol_Chat_V1_Event) -> Void) -> (Protocol_Chat_V1_StreamEventsRequest) -> Void
	func GetUser (req: Request, in: Protocol_Chat_V1_GetUserRequest) throws -> Protocol_Chat_V1_GetUserResponse
	func GetUserBulk (req: Request, in: Protocol_Chat_V1_GetUserBulkRequest) throws -> Protocol_Chat_V1_GetUserBulkResponse
	func GetUserMetadata (req: Request, in: Protocol_Chat_V1_GetUserMetadataRequest) throws -> Protocol_Chat_V1_GetUserMetadataResponse
	func ProfileUpdate (req: Request, in: Protocol_Chat_V1_ProfileUpdateRequest) throws -> Google_Protobuf_Empty
	func Typing (req: Request, in: Protocol_Chat_V1_TypingRequest) throws -> Google_Protobuf_Empty
	func PreviewGuild (req: Request, in: Protocol_Chat_V1_PreviewGuildRequest) throws -> Protocol_Chat_V1_PreviewGuildResponse
	func BanUser (req: Request, in: Protocol_Chat_V1_BanUserRequest) throws -> Google_Protobuf_Empty
	func KickUser (req: Request, in: Protocol_Chat_V1_KickUserRequest) throws -> Google_Protobuf_Empty
	func UnbanUser (req: Request, in: Protocol_Chat_V1_UnbanUserRequest) throws -> Google_Protobuf_Empty
}
extension ChatServiceServer {
	func CreateGuild (req: Request, in: Protocol_Chat_V1_CreateGuildRequest) throws -> Protocol_Chat_V1_CreateGuildResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func CreateInvite (req: Request, in: Protocol_Chat_V1_CreateInviteRequest) throws -> Protocol_Chat_V1_CreateInviteResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func CreateChannel (req: Request, in: Protocol_Chat_V1_CreateChannelRequest) throws -> Protocol_Chat_V1_CreateChannelResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func CreateEmotePack (req: Request, in: Protocol_Chat_V1_CreateEmotePackRequest) throws -> Protocol_Chat_V1_CreateEmotePackResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetGuildList (req: Request, in: Protocol_Chat_V1_GetGuildListRequest) throws -> Protocol_Chat_V1_GetGuildListResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetGuild (req: Request, in: Protocol_Chat_V1_GetGuildRequest) throws -> Protocol_Chat_V1_GetGuildResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetGuildInvites (req: Request, in: Protocol_Chat_V1_GetGuildInvitesRequest) throws -> Protocol_Chat_V1_GetGuildInvitesResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetGuildMembers (req: Request, in: Protocol_Chat_V1_GetGuildMembersRequest) throws -> Protocol_Chat_V1_GetGuildMembersResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetGuildChannels (req: Request, in: Protocol_Chat_V1_GetGuildChannelsRequest) throws -> Protocol_Chat_V1_GetGuildChannelsResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetChannelMessages (req: Request, in: Protocol_Chat_V1_GetChannelMessagesRequest) throws -> Protocol_Chat_V1_GetChannelMessagesResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetMessage (req: Request, in: Protocol_Chat_V1_GetMessageRequest) throws -> Protocol_Chat_V1_GetMessageResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetEmotePacks (req: Request, in: Protocol_Chat_V1_GetEmotePacksRequest) throws -> Protocol_Chat_V1_GetEmotePacksResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetEmotePackEmotes (req: Request, in: Protocol_Chat_V1_GetEmotePackEmotesRequest) throws -> Protocol_Chat_V1_GetEmotePackEmotesResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func UpdateGuildInformation (req: Request, in: Protocol_Chat_V1_UpdateGuildInformationRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func UpdateChannelInformation (req: Request, in: Protocol_Chat_V1_UpdateChannelInformationRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func UpdateChannelOrder (req: Request, in: Protocol_Chat_V1_UpdateChannelOrderRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func UpdateMessageText (req: Request, in: Protocol_Chat_V1_UpdateMessageTextRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func AddEmoteToPack (req: Request, in: Protocol_Chat_V1_AddEmoteToPackRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteGuild (req: Request, in: Protocol_Chat_V1_DeleteGuildRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteInvite (req: Request, in: Protocol_Chat_V1_DeleteInviteRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteChannel (req: Request, in: Protocol_Chat_V1_DeleteChannelRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteMessage (req: Request, in: Protocol_Chat_V1_DeleteMessageRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteEmoteFromPack (req: Request, in: Protocol_Chat_V1_DeleteEmoteFromPackRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteEmotePack (req: Request, in: Protocol_Chat_V1_DeleteEmotePackRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func DequipEmotePack (req: Request, in: Protocol_Chat_V1_DequipEmotePackRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func JoinGuild (req: Request, in: Protocol_Chat_V1_JoinGuildRequest) throws -> Protocol_Chat_V1_JoinGuildResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func LeaveGuild (req: Request, in: Protocol_Chat_V1_LeaveGuildRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func TriggerAction (req: Request, in: Protocol_Chat_V1_TriggerActionRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func SendMessage (req: Request, in: Protocol_Chat_V1_SendMessageRequest) throws -> Protocol_Chat_V1_SendMessageResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func QueryHasPermission (req: Request, in: Protocol_Chat_V1_QueryPermissionsRequest) throws -> Protocol_Chat_V1_QueryPermissionsResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func SetPermissions (req: Request, in: Protocol_Chat_V1_SetPermissionsRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetPermissions (req: Request, in: Protocol_Chat_V1_GetPermissionsRequest) throws -> Protocol_Chat_V1_GetPermissionsResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func MoveRole (req: Request, in: Protocol_Chat_V1_MoveRoleRequest) throws -> Protocol_Chat_V1_MoveRoleResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetGuildRoles (req: Request, in: Protocol_Chat_V1_GetGuildRolesRequest) throws -> Protocol_Chat_V1_GetGuildRolesResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func AddGuildRole (req: Request, in: Protocol_Chat_V1_AddGuildRoleRequest) throws -> Protocol_Chat_V1_AddGuildRoleResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func ModifyGuildRole (req: Request, in: Protocol_Chat_V1_ModifyGuildRoleRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func DeleteGuildRole (req: Request, in: Protocol_Chat_V1_DeleteGuildRoleRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func ManageUserRoles (req: Request, in: Protocol_Chat_V1_ManageUserRolesRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetUserRoles (req: Request, in: Protocol_Chat_V1_GetUserRolesRequest) throws -> Protocol_Chat_V1_GetUserRolesResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func StreamEvents (req: Request, out: (Protocol_Chat_V1_Event) -> Void) -> (Protocol_Chat_V1_StreamEventsRequest) -> Void { return { _ in } }
	func GetUser (req: Request, in: Protocol_Chat_V1_GetUserRequest) throws -> Protocol_Chat_V1_GetUserResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetUserBulk (req: Request, in: Protocol_Chat_V1_GetUserBulkRequest) throws -> Protocol_Chat_V1_GetUserBulkResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func GetUserMetadata (req: Request, in: Protocol_Chat_V1_GetUserMetadataRequest) throws -> Protocol_Chat_V1_GetUserMetadataResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func ProfileUpdate (req: Request, in: Protocol_Chat_V1_ProfileUpdateRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func Typing (req: Request, in: Protocol_Chat_V1_TypingRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func PreviewGuild (req: Request, in: Protocol_Chat_V1_PreviewGuildRequest) throws -> Protocol_Chat_V1_PreviewGuildResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func BanUser (req: Request, in: Protocol_Chat_V1_BanUserRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func KickUser (req: Request, in: Protocol_Chat_V1_KickUserRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func UnbanUser (req: Request, in: Protocol_Chat_V1_UnbanUserRequest) throws -> Google_Protobuf_Empty { throw Abort(.internalServerError, reason: "unimplemented") }
	func registerRoutes(withBuilder builder: RoutesBuilder) {
		builder.post("/protocol.chat.v1.ChatService/CreateGuild") { request -> Response in
			do {
				let message: Protocol_Chat_V1_CreateGuildRequest = try request.decodeMessage()
				let response = try self.CreateGuild(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/CreateInvite") { request -> Response in
			do {
				let message: Protocol_Chat_V1_CreateInviteRequest = try request.decodeMessage()
				let response = try self.CreateInvite(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/CreateChannel") { request -> Response in
			do {
				let message: Protocol_Chat_V1_CreateChannelRequest = try request.decodeMessage()
				let response = try self.CreateChannel(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/CreateEmotePack") { request -> Response in
			do {
				let message: Protocol_Chat_V1_CreateEmotePackRequest = try request.decodeMessage()
				let response = try self.CreateEmotePack(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetGuildList") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetGuildListRequest = try request.decodeMessage()
				let response = try self.GetGuildList(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetGuild") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetGuildRequest = try request.decodeMessage()
				let response = try self.GetGuild(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetGuildInvites") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetGuildInvitesRequest = try request.decodeMessage()
				let response = try self.GetGuildInvites(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetGuildMembers") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetGuildMembersRequest = try request.decodeMessage()
				let response = try self.GetGuildMembers(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetGuildChannels") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetGuildChannelsRequest = try request.decodeMessage()
				let response = try self.GetGuildChannels(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetChannelMessages") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetChannelMessagesRequest = try request.decodeMessage()
				let response = try self.GetChannelMessages(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetMessage") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetMessageRequest = try request.decodeMessage()
				let response = try self.GetMessage(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetEmotePacks") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetEmotePacksRequest = try request.decodeMessage()
				let response = try self.GetEmotePacks(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetEmotePackEmotes") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetEmotePackEmotesRequest = try request.decodeMessage()
				let response = try self.GetEmotePackEmotes(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/UpdateGuildInformation") { request -> Response in
			do {
				let message: Protocol_Chat_V1_UpdateGuildInformationRequest = try request.decodeMessage()
				let response = try self.UpdateGuildInformation(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/UpdateChannelInformation") { request -> Response in
			do {
				let message: Protocol_Chat_V1_UpdateChannelInformationRequest = try request.decodeMessage()
				let response = try self.UpdateChannelInformation(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/UpdateChannelOrder") { request -> Response in
			do {
				let message: Protocol_Chat_V1_UpdateChannelOrderRequest = try request.decodeMessage()
				let response = try self.UpdateChannelOrder(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/UpdateMessageText") { request -> Response in
			do {
				let message: Protocol_Chat_V1_UpdateMessageTextRequest = try request.decodeMessage()
				let response = try self.UpdateMessageText(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/AddEmoteToPack") { request -> Response in
			do {
				let message: Protocol_Chat_V1_AddEmoteToPackRequest = try request.decodeMessage()
				let response = try self.AddEmoteToPack(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/DeleteGuild") { request -> Response in
			do {
				let message: Protocol_Chat_V1_DeleteGuildRequest = try request.decodeMessage()
				let response = try self.DeleteGuild(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/DeleteInvite") { request -> Response in
			do {
				let message: Protocol_Chat_V1_DeleteInviteRequest = try request.decodeMessage()
				let response = try self.DeleteInvite(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/DeleteChannel") { request -> Response in
			do {
				let message: Protocol_Chat_V1_DeleteChannelRequest = try request.decodeMessage()
				let response = try self.DeleteChannel(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/DeleteMessage") { request -> Response in
			do {
				let message: Protocol_Chat_V1_DeleteMessageRequest = try request.decodeMessage()
				let response = try self.DeleteMessage(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/DeleteEmoteFromPack") { request -> Response in
			do {
				let message: Protocol_Chat_V1_DeleteEmoteFromPackRequest = try request.decodeMessage()
				let response = try self.DeleteEmoteFromPack(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/DeleteEmotePack") { request -> Response in
			do {
				let message: Protocol_Chat_V1_DeleteEmotePackRequest = try request.decodeMessage()
				let response = try self.DeleteEmotePack(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/DequipEmotePack") { request -> Response in
			do {
				let message: Protocol_Chat_V1_DequipEmotePackRequest = try request.decodeMessage()
				let response = try self.DequipEmotePack(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/JoinGuild") { request -> Response in
			do {
				let message: Protocol_Chat_V1_JoinGuildRequest = try request.decodeMessage()
				let response = try self.JoinGuild(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/LeaveGuild") { request -> Response in
			do {
				let message: Protocol_Chat_V1_LeaveGuildRequest = try request.decodeMessage()
				let response = try self.LeaveGuild(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/TriggerAction") { request -> Response in
			do {
				let message: Protocol_Chat_V1_TriggerActionRequest = try request.decodeMessage()
				let response = try self.TriggerAction(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/SendMessage") { request -> Response in
			do {
				let message: Protocol_Chat_V1_SendMessageRequest = try request.decodeMessage()
				let response = try self.SendMessage(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/QueryHasPermission") { request -> Response in
			do {
				let message: Protocol_Chat_V1_QueryPermissionsRequest = try request.decodeMessage()
				let response = try self.QueryHasPermission(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/SetPermissions") { request -> Response in
			do {
				let message: Protocol_Chat_V1_SetPermissionsRequest = try request.decodeMessage()
				let response = try self.SetPermissions(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetPermissions") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetPermissionsRequest = try request.decodeMessage()
				let response = try self.GetPermissions(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/MoveRole") { request -> Response in
			do {
				let message: Protocol_Chat_V1_MoveRoleRequest = try request.decodeMessage()
				let response = try self.MoveRole(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetGuildRoles") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetGuildRolesRequest = try request.decodeMessage()
				let response = try self.GetGuildRoles(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/AddGuildRole") { request -> Response in
			do {
				let message: Protocol_Chat_V1_AddGuildRoleRequest = try request.decodeMessage()
				let response = try self.AddGuildRole(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/ModifyGuildRole") { request -> Response in
			do {
				let message: Protocol_Chat_V1_ModifyGuildRoleRequest = try request.decodeMessage()
				let response = try self.ModifyGuildRole(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/DeleteGuildRole") { request -> Response in
			do {
				let message: Protocol_Chat_V1_DeleteGuildRoleRequest = try request.decodeMessage()
				let response = try self.DeleteGuildRole(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/ManageUserRoles") { request -> Response in
			do {
				let message: Protocol_Chat_V1_ManageUserRolesRequest = try request.decodeMessage()
				let response = try self.ManageUserRoles(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetUserRoles") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetUserRolesRequest = try request.decodeMessage()
				let response = try self.GetUserRoles(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.webSocket("/protocol.chat.v1.ChatService/StreamEvents") { request, ws in
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
		builder.post("/protocol.chat.v1.ChatService/GetUser") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetUserRequest = try request.decodeMessage()
				let response = try self.GetUser(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetUserBulk") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetUserBulkRequest = try request.decodeMessage()
				let response = try self.GetUserBulk(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/GetUserMetadata") { request -> Response in
			do {
				let message: Protocol_Chat_V1_GetUserMetadataRequest = try request.decodeMessage()
				let response = try self.GetUserMetadata(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/ProfileUpdate") { request -> Response in
			do {
				let message: Protocol_Chat_V1_ProfileUpdateRequest = try request.decodeMessage()
				let response = try self.ProfileUpdate(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/Typing") { request -> Response in
			do {
				let message: Protocol_Chat_V1_TypingRequest = try request.decodeMessage()
				let response = try self.Typing(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/PreviewGuild") { request -> Response in
			do {
				let message: Protocol_Chat_V1_PreviewGuildRequest = try request.decodeMessage()
				let response = try self.PreviewGuild(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/BanUser") { request -> Response in
			do {
				let message: Protocol_Chat_V1_BanUserRequest = try request.decodeMessage()
				let response = try self.BanUser(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/KickUser") { request -> Response in
			do {
				let message: Protocol_Chat_V1_KickUserRequest = try request.decodeMessage()
				let response = try self.KickUser(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.chat.v1.ChatService/UnbanUser") { request -> Response in
			do {
				let message: Protocol_Chat_V1_UnbanUserRequest = try request.decodeMessage()
				let response = try self.UnbanUser(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
	}
}
