//
// UpdateGroupContacts.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdateGroupContacts: Codable {

    public var contactIds: [UUID]

    public init(contactIds: [UUID]) {
        self.contactIds = contactIds
    }

}
