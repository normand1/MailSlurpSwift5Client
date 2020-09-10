//
// SetInboxFavouritedOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Options for setting inbox favourite state */
public struct SetInboxFavouritedOptions: Codable {

    /** Should the inbox be favourited? */
    public var state: Bool?

    public init(state: Bool? = nil) {
        self.state = state
    }

}
