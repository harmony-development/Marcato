// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: chat/v1/messages.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Protocol_Chat_V1_GetChannelMessagesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var guildID: UInt64 = 0

  var channelID: UInt64 = 0

  var beforeMessage: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Protocol_Chat_V1_GetChannelMessagesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var reachedTop: Bool = false

  var messages: [Protocol_Harmonytypes_V1_Message] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Protocol_Chat_V1_GetMessageRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var guildID: UInt64 = 0

  var channelID: UInt64 = 0

  var messageID: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Protocol_Chat_V1_GetMessageResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var message: Protocol_Harmonytypes_V1_Message {
    get {return _message ?? Protocol_Harmonytypes_V1_Message()}
    set {_message = newValue}
  }
  /// Returns true if `message` has been explicitly set.
  var hasMessage: Bool {return self._message != nil}
  /// Clears the value of `message`. Subsequent reads from it will return its default value.
  mutating func clearMessage() {self._message = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _message: Protocol_Harmonytypes_V1_Message? = nil
}

struct Protocol_Chat_V1_DeleteMessageRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var guildID: UInt64 = 0

  var channelID: UInt64 = 0

  var messageID: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Protocol_Chat_V1_TriggerActionRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var guildID: UInt64 = 0

  var channelID: UInt64 = 0

  var messageID: UInt64 = 0

  var actionID: String = String()

  var actionData: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// SendMessage
struct Protocol_Chat_V1_SendMessageRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var guildID: UInt64 {
    get {return _storage._guildID}
    set {_uniqueStorage()._guildID = newValue}
  }

  var channelID: UInt64 {
    get {return _storage._channelID}
    set {_uniqueStorage()._channelID = newValue}
  }

  var content: Protocol_Harmonytypes_V1_Content {
    get {return _storage._content ?? Protocol_Harmonytypes_V1_Content()}
    set {_uniqueStorage()._content = newValue}
  }
  /// Returns true if `content` has been explicitly set.
  var hasContent: Bool {return _storage._content != nil}
  /// Clears the value of `content`. Subsequent reads from it will return its default value.
  mutating func clearContent() {_uniqueStorage()._content = nil}

  var echoID: UInt64 {
    get {return _storage._echoID}
    set {_uniqueStorage()._echoID = newValue}
  }

  var metadata: Protocol_Harmonytypes_V1_Metadata {
    get {return _storage._metadata ?? Protocol_Harmonytypes_V1_Metadata()}
    set {_uniqueStorage()._metadata = newValue}
  }
  /// Returns true if `metadata` has been explicitly set.
  var hasMetadata: Bool {return _storage._metadata != nil}
  /// Clears the value of `metadata`. Subsequent reads from it will return its default value.
  mutating func clearMetadata() {_uniqueStorage()._metadata = nil}

  var overrides: Protocol_Harmonytypes_V1_Override {
    get {return _storage._overrides ?? Protocol_Harmonytypes_V1_Override()}
    set {_uniqueStorage()._overrides = newValue}
  }
  /// Returns true if `overrides` has been explicitly set.
  var hasOverrides: Bool {return _storage._overrides != nil}
  /// Clears the value of `overrides`. Subsequent reads from it will return its default value.
  mutating func clearOverrides() {_uniqueStorage()._overrides = nil}

  var inReplyTo: UInt64 {
    get {return _storage._inReplyTo}
    set {_uniqueStorage()._inReplyTo = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct Protocol_Chat_V1_SendMessageResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var messageID: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Protocol_Chat_V1_UpdateMessageTextRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var guildID: UInt64 = 0

  var channelID: UInt64 = 0

  var messageID: UInt64 = 0

  var newContent: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protocol.chat.v1"

extension Protocol_Chat_V1_GetChannelMessagesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetChannelMessagesRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "guild_id"),
    2: .standard(proto: "channel_id"),
    3: .standard(proto: "before_message"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.guildID) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.channelID) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.beforeMessage) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.guildID != 0 {
      try visitor.visitSingularUInt64Field(value: self.guildID, fieldNumber: 1)
    }
    if self.channelID != 0 {
      try visitor.visitSingularUInt64Field(value: self.channelID, fieldNumber: 2)
    }
    if self.beforeMessage != 0 {
      try visitor.visitSingularUInt64Field(value: self.beforeMessage, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Chat_V1_GetChannelMessagesRequest, rhs: Protocol_Chat_V1_GetChannelMessagesRequest) -> Bool {
    if lhs.guildID != rhs.guildID {return false}
    if lhs.channelID != rhs.channelID {return false}
    if lhs.beforeMessage != rhs.beforeMessage {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Chat_V1_GetChannelMessagesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetChannelMessagesResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "reached_top"),
    2: .same(proto: "messages"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.reachedTop) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.messages) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.reachedTop != false {
      try visitor.visitSingularBoolField(value: self.reachedTop, fieldNumber: 1)
    }
    if !self.messages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.messages, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Chat_V1_GetChannelMessagesResponse, rhs: Protocol_Chat_V1_GetChannelMessagesResponse) -> Bool {
    if lhs.reachedTop != rhs.reachedTop {return false}
    if lhs.messages != rhs.messages {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Chat_V1_GetMessageRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetMessageRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "guild_id"),
    2: .standard(proto: "channel_id"),
    3: .standard(proto: "message_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.guildID) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.channelID) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.messageID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.guildID != 0 {
      try visitor.visitSingularUInt64Field(value: self.guildID, fieldNumber: 1)
    }
    if self.channelID != 0 {
      try visitor.visitSingularUInt64Field(value: self.channelID, fieldNumber: 2)
    }
    if self.messageID != 0 {
      try visitor.visitSingularUInt64Field(value: self.messageID, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Chat_V1_GetMessageRequest, rhs: Protocol_Chat_V1_GetMessageRequest) -> Bool {
    if lhs.guildID != rhs.guildID {return false}
    if lhs.channelID != rhs.channelID {return false}
    if lhs.messageID != rhs.messageID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Chat_V1_GetMessageResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetMessageResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "message"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._message) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._message {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Chat_V1_GetMessageResponse, rhs: Protocol_Chat_V1_GetMessageResponse) -> Bool {
    if lhs._message != rhs._message {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Chat_V1_DeleteMessageRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DeleteMessageRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "guild_id"),
    2: .standard(proto: "channel_id"),
    3: .standard(proto: "message_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.guildID) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.channelID) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.messageID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.guildID != 0 {
      try visitor.visitSingularUInt64Field(value: self.guildID, fieldNumber: 1)
    }
    if self.channelID != 0 {
      try visitor.visitSingularUInt64Field(value: self.channelID, fieldNumber: 2)
    }
    if self.messageID != 0 {
      try visitor.visitSingularUInt64Field(value: self.messageID, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Chat_V1_DeleteMessageRequest, rhs: Protocol_Chat_V1_DeleteMessageRequest) -> Bool {
    if lhs.guildID != rhs.guildID {return false}
    if lhs.channelID != rhs.channelID {return false}
    if lhs.messageID != rhs.messageID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Chat_V1_TriggerActionRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TriggerActionRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "guild_id"),
    2: .standard(proto: "channel_id"),
    3: .standard(proto: "message_id"),
    4: .standard(proto: "action_id"),
    5: .standard(proto: "action_data"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.guildID) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.channelID) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.messageID) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.actionID) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.actionData) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.guildID != 0 {
      try visitor.visitSingularUInt64Field(value: self.guildID, fieldNumber: 1)
    }
    if self.channelID != 0 {
      try visitor.visitSingularUInt64Field(value: self.channelID, fieldNumber: 2)
    }
    if self.messageID != 0 {
      try visitor.visitSingularUInt64Field(value: self.messageID, fieldNumber: 3)
    }
    if !self.actionID.isEmpty {
      try visitor.visitSingularStringField(value: self.actionID, fieldNumber: 4)
    }
    if !self.actionData.isEmpty {
      try visitor.visitSingularStringField(value: self.actionData, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Chat_V1_TriggerActionRequest, rhs: Protocol_Chat_V1_TriggerActionRequest) -> Bool {
    if lhs.guildID != rhs.guildID {return false}
    if lhs.channelID != rhs.channelID {return false}
    if lhs.messageID != rhs.messageID {return false}
    if lhs.actionID != rhs.actionID {return false}
    if lhs.actionData != rhs.actionData {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Chat_V1_SendMessageRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SendMessageRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "guild_id"),
    2: .standard(proto: "channel_id"),
    3: .same(proto: "content"),
    4: .standard(proto: "echo_id"),
    5: .same(proto: "metadata"),
    6: .same(proto: "overrides"),
    7: .standard(proto: "in_reply_to"),
  ]

  fileprivate class _StorageClass {
    var _guildID: UInt64 = 0
    var _channelID: UInt64 = 0
    var _content: Protocol_Harmonytypes_V1_Content? = nil
    var _echoID: UInt64 = 0
    var _metadata: Protocol_Harmonytypes_V1_Metadata? = nil
    var _overrides: Protocol_Harmonytypes_V1_Override? = nil
    var _inReplyTo: UInt64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _guildID = source._guildID
      _channelID = source._channelID
      _content = source._content
      _echoID = source._echoID
      _metadata = source._metadata
      _overrides = source._overrides
      _inReplyTo = source._inReplyTo
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularUInt64Field(value: &_storage._guildID) }()
        case 2: try { try decoder.decodeSingularUInt64Field(value: &_storage._channelID) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._content) }()
        case 4: try { try decoder.decodeSingularUInt64Field(value: &_storage._echoID) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._metadata) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._overrides) }()
        case 7: try { try decoder.decodeSingularUInt64Field(value: &_storage._inReplyTo) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._guildID != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._guildID, fieldNumber: 1)
      }
      if _storage._channelID != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._channelID, fieldNumber: 2)
      }
      if let v = _storage._content {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if _storage._echoID != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._echoID, fieldNumber: 4)
      }
      if let v = _storage._metadata {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._overrides {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if _storage._inReplyTo != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._inReplyTo, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Chat_V1_SendMessageRequest, rhs: Protocol_Chat_V1_SendMessageRequest) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._guildID != rhs_storage._guildID {return false}
        if _storage._channelID != rhs_storage._channelID {return false}
        if _storage._content != rhs_storage._content {return false}
        if _storage._echoID != rhs_storage._echoID {return false}
        if _storage._metadata != rhs_storage._metadata {return false}
        if _storage._overrides != rhs_storage._overrides {return false}
        if _storage._inReplyTo != rhs_storage._inReplyTo {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Chat_V1_SendMessageResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SendMessageResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "message_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.messageID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.messageID != 0 {
      try visitor.visitSingularUInt64Field(value: self.messageID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Chat_V1_SendMessageResponse, rhs: Protocol_Chat_V1_SendMessageResponse) -> Bool {
    if lhs.messageID != rhs.messageID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Chat_V1_UpdateMessageTextRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UpdateMessageTextRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "guild_id"),
    2: .standard(proto: "channel_id"),
    3: .standard(proto: "message_id"),
    4: .standard(proto: "new_content"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.guildID) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.channelID) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.messageID) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.newContent) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.guildID != 0 {
      try visitor.visitSingularUInt64Field(value: self.guildID, fieldNumber: 1)
    }
    if self.channelID != 0 {
      try visitor.visitSingularUInt64Field(value: self.channelID, fieldNumber: 2)
    }
    if self.messageID != 0 {
      try visitor.visitSingularUInt64Field(value: self.messageID, fieldNumber: 3)
    }
    if !self.newContent.isEmpty {
      try visitor.visitSingularStringField(value: self.newContent, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Chat_V1_UpdateMessageTextRequest, rhs: Protocol_Chat_V1_UpdateMessageTextRequest) -> Bool {
    if lhs.guildID != rhs.guildID {return false}
    if lhs.channelID != rhs.channelID {return false}
    if lhs.messageID != rhs.messageID {return false}
    if lhs.newContent != rhs.newContent {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
