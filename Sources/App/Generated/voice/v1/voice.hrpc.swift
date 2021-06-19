import Vapor
import SwiftProtobuf
import Foundation
protocol VoiceServiceServer {
	func Connect (req: Request, in: Protocol_Voice_V1_ConnectRequest) throws -> Protocol_Voice_V1_ConnectResponse
	func StreamState (req: Request, in: Protocol_Voice_V1_StreamStateRequest, out: (Protocol_Voice_V1_Signal) -> Void)
}
extension VoiceServiceServer {
	func Connect (req: Request, in: Protocol_Voice_V1_ConnectRequest) throws -> Protocol_Voice_V1_ConnectResponse { throw Abort(.internalServerError, reason: "unimplemented") }
	func StreamState (req: Request, in: Protocol_Voice_V1_StreamStateRequest, out: (Protocol_Voice_V1_Signal) -> Void) { }
	func registerRoutes(withBuilder builder: RoutesBuilder) {
		builder.post("/protocol.voice.v1.VoiceService/Connect") { request -> Response in
			do {
				let message: Protocol_Voice_V1_ConnectRequest = try request.decodeMessage()
				let response = try self.Connect(req: request, in: message)
				return try response.toResponse(on: request)
			} catch {
			throw Abort(.internalServerError, reason: "something did an oops")
			}
		}
		builder.webSocket("/protocol.voice.v1.VoiceService/StreamState") { request, ws in
			ws.onBinary { ws, bb in
				do {
					let message = try Protocol_Voice_V1_StreamStateRequest(serializedData: bb.allData())
					self.StreamState(req: request, in: message) { message in
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
	}
}
