//
// WebhookTestResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Results of testing a webhook */
public struct WebhookTestResult: Codable {

    public var message: String?
    public var request: WebhookTestRequest
    public var response: WebhookTestResponse

    public init(message: String? = nil, request: WebhookTestRequest, response: WebhookTestResponse) {
        self.message = message
        self.request = request
        self.response = response
    }

}

