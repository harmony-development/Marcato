import Vapor
import SwiftProtobuf
import Foundation
protocol VoiceServiceServer {
	func StreamMessage (req: Request, out: (Protocol_Voice_V1_StreamMessageResponse) -> Void) -> (Protocol_Voice_V1_StreamMessageRequest) -> Void
}
extension VoiceServiceServer {
	func StreamMessage (req: Request, out: (Protocol_Voice_V1_StreamMessageResponse) -> Void) -> (Protocol_Voice_V1_StreamMessageRequest) -> Void { return { _ in } }
	func registerRoutes(withBuilder builder: RoutesBuilder) {
		builder.group("protocol.voice.v1.VoiceService") { builder in
			builder.webSocket("StreamMessage") { request, ws in
				let callback = self.StreamMessage(req: request) { message in
					do {
						ws.send([UInt8](try message.serializedData()))
					} catch {
						_ = ws.close()
					}
				}
				ws.onBinary { ws, bb in
					do {
						try callback(Protocol_Voice_V1_StreamMessageRequest(serializedData: bb.allData()))
					} catch {
						_ = ws.close()
					}
				}
			}
		}
	}
}
