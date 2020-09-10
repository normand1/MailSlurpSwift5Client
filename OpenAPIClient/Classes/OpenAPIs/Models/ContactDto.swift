//
// ContactDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ContactDto: Codable {

    public var company: String?
    public var emailAddresses: [String]
    public var firstName: String?
    public var id: UUID
    public var lastName: String?
    public var metaData: JsonNode?
    public var optOut: Bool?
    public var tags: [String]

    public init(company: String? = nil, emailAddresses: [String], firstName: String? = nil, id: UUID, lastName: String? = nil, metaData: JsonNode? = nil, optOut: Bool? = nil, tags: [String]) {
        self.company = company
        self.emailAddresses = emailAddresses
        self.firstName = firstName
        self.id = id
        self.lastName = lastName
        self.metaData = metaData
        self.optOut = optOut
        self.tags = tags
    }

}
