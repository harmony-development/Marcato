import Vapor
import SwiftProtobuf
import Foundation

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
    fileprivate func toHTTPResponse(json: Bool = false) throws -> Response {
        let http = Response(status: .ok)

        if json {
            http.headers.contentType = .json
            http.body = .init(string: try jsonString())
        } else {
            http.headers.contentType = .init(type: "application", subType: "protobuf")
            http.body = .init(data: try serializedData())
        }
        return http
    }

    public func toResponse(on req: Request) throws -> Response {
        let json = req.headers.accept.contains(where: { $0.mediaType == .json })
        let response = try toHTTPResponse(json: json)
        return response
    }
}

extension EventLoopFuture {
    public func toResponse<M>(_ type: M.Type = M.self, on req: Request) -> EventLoopFuture<Response> where Value : SwiftProtobuf.Message {
        return self.flatMapThrowing { try $0.toResponse(on: req) }

    }
}