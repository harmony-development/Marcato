import Vapor
import SwiftProtobuf
import Foundation
import Redis
import NIOFoundationCompat

extension ByteBuffer {
    public func allData() -> Data {
        return getData(at: 0, length: readableBytes) ?? Data()
    }
}

extension Request {
    public func decodeMessage<M: SwiftProtobuf.Message>(_ type: M.Type = M.self) throws -> M {
        let data = self.body.data?.allData() ?? Data()

        if headers.contentType == .json {
            return try M(jsonUTF8Data: data)
        }
        return try M(serializedData: data)
    }
}

extension SwiftProtobuf.Message {
    fileprivate func toHTTPResponse() throws -> Response {
        let http = Response(status: .ok)
        http.headers.add(name: "Hrpc-Version", value: "1")
        http.headers.contentType = .init(type: "application", subType: "hrpc")
        http.body = .init(data: try serializedData())
        return http
    }

    public func toResponse(on req: Request) throws -> Response {
        let response = try toHTTPResponse()
        return response
    }
}

extension EventLoopFuture {
    public func toResponse<M>(_ type: M.Type = M.self, on req: Request) -> EventLoopFuture<Response> where Value : SwiftProtobuf.Message {
        return self.flatMapThrowing { try $0.toResponse(on: req) }

    }
}

struct RedisMessage<T: SwiftProtobuf.Message>: RESPValueConvertible {
    let msg: T

    init(_ step: T) {
        msg = step
    }
    init?(fromRESP value: RESPValue) {
        guard let bb = value.byteBuffer else {
            return nil
        }

        guard let m = try? T(serializedData: bb.allData()) else {
            return nil
        }

        msg = m
    }

    func convertedToRESPValue() -> RESPValue {
        .bulkString(ByteBuffer(data: try! msg.serializedData()))
    }
}