//
// CreateWebhookOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Options for creating a webhook. Webhooks can be attached to inboxes and MailSlurp will POST a webhook payload to the URL specified whenever the inbox receives an email. Webhooks are great for processing many inbound emails. */
public struct CreateWebhookOptions: Codable {

    public var basicAuth: BasicAuthOptions?
    /** Optional name for the webhook */
    public var name: String?
    /** Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received. The payload of the submitted JSON is described by https://api.mailslurp.com/schemas/webhook-payload */
    public var url: String?

    public init(basicAuth: BasicAuthOptions? = nil, name: String? = nil, url: String? = nil) {
        self.basicAuth = basicAuth
        self.name = name
        self.url = url
    }

}

