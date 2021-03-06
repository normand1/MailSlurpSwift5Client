//
// CreateContactOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CreateContactOptions: Codable {

    /** Set of email addresses belonging to the contact */
    public var emailAddresses: [String]?
    public var firstName: String?
    /** Group IDs that contact belongs to */
    public var groupId: UUID?
    public var metaData: JsonNode?
    /** Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions. */
    public var optOut: Bool?
    /** Tags that can be used to search and group contacts */
    public var tags: [String]?
    public var lastName: String?
    public var company: String?

    public init(emailAddresses: [String]? = nil, firstName: String? = nil, groupId: UUID? = nil, metaData: JsonNode? = nil, optOut: Bool? = nil, tags: [String]? = nil, lastName: String? = nil, company: String? = nil) {
        self.emailAddresses = emailAddresses
        self.firstName = firstName
        self.groupId = groupId
        self.metaData = metaData
        self.optOut = optOut
        self.tags = tags
        self.lastName = lastName
        self.company = company
    }

}

