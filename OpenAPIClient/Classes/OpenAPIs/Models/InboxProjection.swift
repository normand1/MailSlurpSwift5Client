//
// InboxProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct InboxProjection: Codable {

    public var createdAt: Date
    public var emailAddress: String?
    public var favourite: Bool?
    public var id: UUID
    public var name: String?
    public var tags: [String]?

    public init(createdAt: Date, emailAddress: String? = nil, favourite: Bool? = nil, id: UUID, name: String? = nil, tags: [String]? = nil) {
        self.createdAt = createdAt
        self.emailAddress = emailAddress
        self.favourite = favourite
        self.id = id
        self.name = name
        self.tags = tags
    }

}

