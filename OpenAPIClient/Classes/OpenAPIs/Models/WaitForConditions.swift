//
// WaitForConditions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Conditions that a &#x60;waitForXEmails&#x60; endpoint operates on. The methods wait until given conditions are met or a timeout is reached. If the conditions are met without needing to wait the results will be returned immediately. */
public struct WaitForConditions: Codable {

    public enum CountType: String, Codable, CaseIterable {
        case exactly = "EXACTLY"
        case atleast = "ATLEAST"
    }
    public enum SortDirection: String, Codable, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }
    /** Number of results that should match conditions. Either exactly or at least this amount based on the &#x60;countType&#x60;. If count condition is not met and the timeout has not been reached the &#x60;waitFor&#x60; method will retry the operation. */
    public var count: Int?
    /** How should the found count be compared to the expected count. */
    public var countType: CountType?
    /** ID of inbox to search within and apply conditions to. Essentially filtering the emails found to give a count. */
    public var inboxId: UUID?
    /** Conditions that should be matched for an email to qualify for results. Each condition will be applied in order to each email within an inbox to filter a result list of matching emails you are waiting for. */
    public var matches: [MatchOption]?
    /** Direction to sort matching emails by created time */
    public var sortDirection: SortDirection?
    /** Max time in milliseconds to retry the &#x60;waitFor&#x60; operation until conditions are met. */
    public var timeout: Int64?
    /** Apply conditions only to **unread** emails. All emails begin with &#x60;read&#x3D;false&#x60;. An email is marked &#x60;read&#x3D;true&#x60; when an &#x60;EmailDto&#x60; representation of it has been returned to the user at least once. For example you have called &#x60;getEmail&#x60; or &#x60;waitForLatestEmail&#x60; etc., or you have viewed the email in the dashboard.  */
    public var unreadOnly: Bool?

    public init(count: Int? = nil, countType: CountType? = nil, inboxId: UUID? = nil, matches: [MatchOption]? = nil, sortDirection: SortDirection? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil) {
        self.count = count
        self.countType = countType
        self.inboxId = inboxId
        self.matches = matches
        self.sortDirection = sortDirection
        self.timeout = timeout
        self.unreadOnly = unreadOnly
    }

}

