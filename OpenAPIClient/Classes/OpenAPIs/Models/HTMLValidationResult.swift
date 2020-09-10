//
// HTMLValidationResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct HTMLValidationResult: Codable {

    public var errors: [ValidationMessage]
    public var isValid: Bool
    public var warnings: [ValidationMessage]

    public init(errors: [ValidationMessage], isValid: Bool, warnings: [ValidationMessage]) {
        self.errors = errors
        self.isValid = isValid
        self.warnings = warnings
    }

}

