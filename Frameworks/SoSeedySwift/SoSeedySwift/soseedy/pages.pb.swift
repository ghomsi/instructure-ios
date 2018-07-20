//
// Copyright (C) 2017-present Instructure, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: pages.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Soseedy_CreateCoursePageRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var courseID: Int64 = 0

  public var published: Bool = false

  public var frontPage: Bool = false

  public var token: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Soseedy_Page {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var url: String = String()

  public var title: String = String()

  public var body: String = String()

  public var published: Bool = false

  public var frontPage: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "soseedy"

extension Soseedy_CreateCoursePageRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateCoursePageRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "courseId"),
    2: .same(proto: "published"),
    3: .same(proto: "frontPage"),
    4: .same(proto: "token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.courseID)
      case 2: try decoder.decodeSingularBoolField(value: &self.published)
      case 3: try decoder.decodeSingularBoolField(value: &self.frontPage)
      case 4: try decoder.decodeSingularStringField(value: &self.token)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.courseID != 0 {
      try visitor.visitSingularInt64Field(value: self.courseID, fieldNumber: 1)
    }
    if self.published != false {
      try visitor.visitSingularBoolField(value: self.published, fieldNumber: 2)
    }
    if self.frontPage != false {
      try visitor.visitSingularBoolField(value: self.frontPage, fieldNumber: 3)
    }
    if !self.token.isEmpty {
      try visitor.visitSingularStringField(value: self.token, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Soseedy_CreateCoursePageRequest) -> Bool {
    if self.courseID != other.courseID {return false}
    if self.published != other.published {return false}
    if self.frontPage != other.frontPage {return false}
    if self.token != other.token {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Soseedy_Page: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Page"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "url"),
    2: .same(proto: "title"),
    3: .same(proto: "body"),
    4: .same(proto: "published"),
    5: .same(proto: "frontPage"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.url)
      case 2: try decoder.decodeSingularStringField(value: &self.title)
      case 3: try decoder.decodeSingularStringField(value: &self.body)
      case 4: try decoder.decodeSingularBoolField(value: &self.published)
      case 5: try decoder.decodeSingularBoolField(value: &self.frontPage)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.url.isEmpty {
      try visitor.visitSingularStringField(value: self.url, fieldNumber: 1)
    }
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 2)
    }
    if !self.body.isEmpty {
      try visitor.visitSingularStringField(value: self.body, fieldNumber: 3)
    }
    if self.published != false {
      try visitor.visitSingularBoolField(value: self.published, fieldNumber: 4)
    }
    if self.frontPage != false {
      try visitor.visitSingularBoolField(value: self.frontPage, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Soseedy_Page) -> Bool {
    if self.url != other.url {return false}
    if self.title != other.title {return false}
    if self.body != other.body {return false}
    if self.published != other.published {return false}
    if self.frontPage != other.frontPage {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
