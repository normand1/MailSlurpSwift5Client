//
// CreateTemplateOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CreateTemplateOptions: Codable {

    public var name: String
    public var content: String

    public init(name: String, content: String) {
        self.name = name
        self.content = content
    }

}
