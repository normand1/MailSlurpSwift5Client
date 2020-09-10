//
// TemplateVariable.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct TemplateVariable: Codable {

    public enum VariableType: String, Codable, CaseIterable {
        case string = "STRING"
    }
    public var name: String
    public var variableType: VariableType

    public init(name: String, variableType: VariableType) {
        self.name = name
        self.variableType = variableType
    }

}
