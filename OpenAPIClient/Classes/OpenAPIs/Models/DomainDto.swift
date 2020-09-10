//
// DomainDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Domain plus verification records and status */
public struct DomainDto: Codable {

    public var createdAt: Date
    public var domain: String
    public var id: UUID
    public var isVerified: Bool
    public var updatedAt: Date
    public var userId: UUID
    public var verificationToken: String

    public init(createdAt: Date, domain: String, id: UUID, isVerified: Bool, updatedAt: Date, userId: UUID, verificationToken: String) {
        self.createdAt = createdAt
        self.domain = domain
        self.id = id
        self.isVerified = isVerified
        self.updatedAt = updatedAt
        self.userId = userId
        self.verificationToken = verificationToken
    }

}
