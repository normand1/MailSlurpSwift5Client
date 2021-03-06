# WaitForControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**waitFor**](WaitForControllerAPI.md#waitfor) | **POST** /waitFor | Wait for conditions to be met
[**waitForEmailCount**](WaitForControllerAPI.md#waitforemailcount) | **GET** /waitForEmailCount | Wait for and return count number of emails 
[**waitForLatestEmail**](WaitForControllerAPI.md#waitforlatestemail) | **GET** /waitForLatestEmail | Fetch inbox&#39;s latest email or if empty wait for an email to arrive
[**waitForMatchingEmail**](WaitForControllerAPI.md#waitformatchingemail) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
[**waitForNthEmail**](WaitForControllerAPI.md#waitfornthemail) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified


# **waitFor**
```swift
    open class func waitFor(waitForConditions: WaitForConditions? = nil, completion: @escaping (_ data: [EmailPreview]?, _ error: Error?) -> Void)
```

Wait for conditions to be met

Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let waitForConditions = WaitForConditions(count: 123, countType: "countType_example", inboxId: 123, matches: [MatchOption(field: "field_example", should: "should_example", value: "value_example")], sortDirection: "sortDirection_example", timeout: 123, unreadOnly: false) // WaitForConditions | Conditions to wait for (optional)

// Wait for conditions to be met
WaitForControllerAPI.waitFor(waitForConditions: waitForConditions) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waitForConditions** | [**WaitForConditions**](WaitForConditions.md) | Conditions to wait for | [optional] 

### Return type

[**[EmailPreview]**](EmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **waitForEmailCount**
```swift
    open class func waitForEmailCount(count: Int? = nil, inboxId: UUID? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil, completion: @escaping (_ data: [EmailPreview]?, _ error: Error?) -> Void)
```

Wait for and return count number of emails 

If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let count = 987 // Int | Number of emails to wait for. Must be greater that 1 (optional)
let inboxId = 987 // UUID | Id of the inbox we are fetching emails from (optional)
let timeout = 987 // Int64 | Max milliseconds to wait (optional)
let unreadOnly = true // Bool | Optional filter for unread only (optional) (default to false)

// Wait for and return count number of emails 
WaitForControllerAPI.waitForEmailCount(count: count, inboxId: inboxId, timeout: timeout, unreadOnly: unreadOnly) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Int** | Number of emails to wait for. Must be greater that 1 | [optional] 
 **inboxId** | [**UUID**](.md) | Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **Int64** | Max milliseconds to wait | [optional] 
 **unreadOnly** | **Bool** | Optional filter for unread only | [optional] [default to false]

### Return type

[**[EmailPreview]**](EmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **waitForLatestEmail**
```swift
    open class func waitForLatestEmail(inboxId: UUID? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil, completion: @escaping (_ data: Email?, _ error: Error?) -> Void)
```

Fetch inbox's latest email or if empty wait for an email to arrive

Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inboxId = 987 // UUID | Id of the inbox we are fetching emails from (optional)
let timeout = 987 // Int64 | Max milliseconds to wait (optional)
let unreadOnly = true // Bool | Optional filter for unread only. (optional) (default to false)

// Fetch inbox's latest email or if empty wait for an email to arrive
WaitForControllerAPI.waitForLatestEmail(inboxId: inboxId, timeout: timeout, unreadOnly: unreadOnly) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**UUID**](.md) | Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **Int64** | Max milliseconds to wait | [optional] 
 **unreadOnly** | **Bool** | Optional filter for unread only. | [optional] [default to false]

### Return type

[**Email**](Email.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **waitForMatchingEmail**
```swift
    open class func waitForMatchingEmail(matchOptions: MatchOptions, count: Int? = nil, inboxId: UUID? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil, completion: @escaping (_ data: [EmailPreview]?, _ error: Error?) -> Void)
```

Wait or return list of emails that match simple matching patterns

Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let matchOptions = MatchOptions(matches: [MatchOption(field: "field_example", should: "should_example", value: "value_example")]) // MatchOptions | matchOptions
let count = 987 // Int | Number of emails to wait for. Must be greater that 1 (optional)
let inboxId = 987 // UUID | Id of the inbox we are fetching emails from (optional)
let timeout = 987 // Int64 | Max milliseconds to wait (optional)
let unreadOnly = true // Bool | Optional filter for unread only (optional) (default to false)

// Wait or return list of emails that match simple matching patterns
WaitForControllerAPI.waitForMatchingEmail(matchOptions: matchOptions, count: count, inboxId: inboxId, timeout: timeout, unreadOnly: unreadOnly) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matchOptions** | [**MatchOptions**](MatchOptions.md) | matchOptions | 
 **count** | **Int** | Number of emails to wait for. Must be greater that 1 | [optional] 
 **inboxId** | [**UUID**](.md) | Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **Int64** | Max milliseconds to wait | [optional] 
 **unreadOnly** | **Bool** | Optional filter for unread only | [optional] [default to false]

### Return type

[**[EmailPreview]**](EmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **waitForNthEmail**
```swift
    open class func waitForNthEmail(inboxId: UUID? = nil, index: Int? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil, completion: @escaping (_ data: Email?, _ error: Error?) -> Void)
```

Wait for or fetch the email with a given index in the inbox specified

If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inboxId = 987 // UUID | Id of the inbox you are fetching emails from (optional)
let index = 987 // Int | Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1 (optional)
let timeout = 987 // Int64 | Max milliseconds to wait for the nth email if not already present (optional)
let unreadOnly = true // Bool | Optional filter for unread only (optional) (default to false)

// Wait for or fetch the email with a given index in the inbox specified
WaitForControllerAPI.waitForNthEmail(inboxId: inboxId, index: index, timeout: timeout, unreadOnly: unreadOnly) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**UUID**](.md) | Id of the inbox you are fetching emails from | [optional] 
 **index** | **Int** | Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 | [optional] 
 **timeout** | **Int64** | Max milliseconds to wait for the nth email if not already present | [optional] 
 **unreadOnly** | **Bool** | Optional filter for unread only | [optional] [default to false]

### Return type

[**Email**](Email.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

