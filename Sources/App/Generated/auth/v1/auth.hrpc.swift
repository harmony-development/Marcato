import Vapor
import SwiftProtobuf
import Foundation
protocol AuthServiceServer {
	func Federate (req: Request, in: Protocol_Auth_V1_FederateRequest) throws -> Protocol_Auth_V1_FederateResponse
	func LoginFederated (req: Request, in: Protocol_Auth_V1_LoginFederatedRequest) throws -> Protocol_Auth_V1_LoginFederatedResponse
	func Key (req: Request, in: Protocol_Auth_V1_KeyRequest) throws -> Protocol_Auth_V1_KeyResponse
	func BeginAuth (req: Request, in: Protocol_Auth_V1_BeginAuthRequest) throws -> Protocol_Auth_V1_BeginAuthResponse
	func NextStep (req: Request, in: Protocol_Auth_V1_NextStepRequest) throws -> Protocol_Auth_V1_NextStepResponse
	func StepBack (req: Request, in: Protocol_Auth_V1_StepBackRequest) throws -> Protocol_Auth_V1_StepBackResponse
	func StreamSteps (req: Request, in: Protocol_Auth_V1_StreamStepsRequest, out: (Protocol_Auth_V1_StreamStepsResponse) -> Void)
	func CheckLoggedIn (req: Request, in: Protocol_Auth_V1_CheckLoggedInRequest) throws -> Protocol_Auth_V1_CheckLoggedInResponse
}
extension AuthServiceServer {
	func Federate (req: Request, in: Protocol_Auth_V1_FederateRequest) throws -> Protocol_Auth_V1_FederateResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func LoginFederated (req: Request, in: Protocol_Auth_V1_LoginFederatedRequest) throws -> Protocol_Auth_V1_LoginFederatedResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func Key (req: Request, in: Protocol_Auth_V1_KeyRequest) throws -> Protocol_Auth_V1_KeyResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func BeginAuth (req: Request, in: Protocol_Auth_V1_BeginAuthRequest) throws -> Protocol_Auth_V1_BeginAuthResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func NextStep (req: Request, in: Protocol_Auth_V1_NextStepRequest) throws -> Protocol_Auth_V1_NextStepResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func StepBack (req: Request, in: Protocol_Auth_V1_StepBackRequest) throws -> Protocol_Auth_V1_StepBackResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func StreamSteps (req: Request, in: Protocol_Auth_V1_StreamStepsRequest, out: (Protocol_Auth_V1_StreamStepsResponse) -> Void) { }
	func CheckLoggedIn (req: Request, in: Protocol_Auth_V1_CheckLoggedInRequest) throws -> Protocol_Auth_V1_CheckLoggedInResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func registerRoutes(withBuilder builder: RoutesBuilder) {
		builder.post("/protocol.auth.v1.AuthService/Federate") { request -> Response in
			do {
				let message: Protocol_Auth_V1_FederateRequest = try request.decodeMessage()
				let response = try self.Federate(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.auth.v1.AuthService/LoginFederated") { request -> Response in
			do {
				let message: Protocol_Auth_V1_LoginFederatedRequest = try request.decodeMessage()
				let response = try self.LoginFederated(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.auth.v1.AuthService/Key") { request -> Response in
			do {
				let message: Protocol_Auth_V1_KeyRequest = try request.decodeMessage()
				let response = try self.Key(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.auth.v1.AuthService/BeginAuth") { request -> Response in
			do {
				let message: Protocol_Auth_V1_BeginAuthRequest = try request.decodeMessage()
				let response = try self.BeginAuth(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.auth.v1.AuthService/NextStep") { request -> Response in
			do {
				let message: Protocol_Auth_V1_NextStepRequest = try request.decodeMessage()
				let response = try self.NextStep(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.post("/protocol.auth.v1.AuthService/StepBack") { request -> Response in
			do {
				let message: Protocol_Auth_V1_StepBackRequest = try request.decodeMessage()
				let response = try self.StepBack(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.webSocket("/protocol.auth.v1.AuthService/StreamSteps") { request, ws in
			ws.onBinary { ws, bb in
				do {
					let message = try Protocol_Auth_V1_StreamStepsRequest(serializedData: bb.allData())
					self.StreamSteps(req: request, in: message) { message in
						do {
							ws.send([UInt8](try message.serializedData()))
						} catch {
							_ = ws.close()
						}
					}
				} catch {
					_ = ws.close()
				}
			}
		}
		builder.post("/protocol.auth.v1.AuthService/CheckLoggedIn") { request -> Response in
			do {
				let message: Protocol_Auth_V1_CheckLoggedInRequest = try request.decodeMessage()
				let response = try self.CheckLoggedIn(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
	}
}
