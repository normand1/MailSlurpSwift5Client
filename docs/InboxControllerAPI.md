# InboxControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInbox**](InboxControllerAPI.md#createinbox) | **POST** /inboxes | Create an Inbox (email address)
[**deleteAllInboxes**](InboxControllerAPI.md#deleteallinboxes) | **DELETE** /inboxes | Delete all inboxes
[**deleteInbox**](InboxControllerAPI.md#deleteinbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**getAllInboxes**](InboxControllerAPI.md#getallinboxes) | **GET** /inboxes/paginated | List Inboxes Paginated
[**getEmails**](InboxControllerAPI.md#getemails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox
[**getInbox**](InboxControllerAPI.md#getinbox) | **GET** /inboxes/{inboxId} | Get Inbox
[**getInboxEmailsPaginated**](InboxControllerAPI.md#getinboxemailspaginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**getInboxTags**](InboxControllerAPI.md#getinboxtags) | **GET** /inboxes/tags | Get inbox tags
[**getInboxes**](InboxControllerAPI.md#getinboxes) | **GET** /inboxes | List Inboxes / Email Addresses
[**sendEmail**](InboxControllerAPI.md#sendemail) | **POST** /inboxes/{inboxId} | Send Email
[**setInboxFavourited**](InboxControllerAPI.md#setinboxfavourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**updateInbox**](InboxControllerAPI.md#updateinbox) | **PATCH** /inboxes/{inboxId} | Update Inbox


# **createInbox**
```swift
    open class func createInbox(description: String? = nil, emailAddress: String? = nil, expiresAt: Date? = nil, favourite: Bool? = nil, name: String? = nil, tags: [String]? = nil, completion: @escaping (_ data: Inbox?, _ error: Error?) -> Void)
```

Create an Inbox (email address)

Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let description = "description_example" // String | Optional description for an inbox. (optional)
let emailAddress = "emailAddress_example" // String | Optional email address including domain you wish inbox to use (eg: test123@mydomain.com). Only supports domains that you have registered and verified with MailSlurp using dashboard or `createDomain` method. (optional)
let expiresAt = Date() // Date | Optional expires at timestamp. If your plan supports this feature you can specify when an inbox should expire. If left empty inbox will exist permanently or expire when your plan dictates (optional)
let favourite = true // Bool | Is inbox favourited. (optional)
let name = "name_example" // String | Optional name for an inbox. (optional)
let tags = ["inner_example"] // [String] | Optional tags for an inbox. Can be used for searching and filtering inboxes. (optional)

// Create an Inbox (email address)
InboxControllerAPI.createInbox(description: description, emailAddress: emailAddress, expiresAt: expiresAt, favourite: favourite, name: name, tags: tags) { (response, error) in
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
 **description** | **String** | Optional description for an inbox. | [optional] 
 **emailAddress** | **String** | Optional email address including domain you wish inbox to use (eg: test123@mydomain.com). Only supports domains that you have registered and verified with MailSlurp using dashboard or &#x60;createDomain&#x60; method. | [optional] 
 **expiresAt** | **Date** | Optional expires at timestamp. If your plan supports this feature you can specify when an inbox should expire. If left empty inbox will exist permanently or expire when your plan dictates | [optional] 
 **favourite** | **Bool** | Is inbox favourited. | [optional] 
 **name** | **String** | Optional name for an inbox. | [optional] 
 **tags** | [**[String]**](String.md) | Optional tags for an inbox. Can be used for searching and filtering inboxes. | [optional] 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAllInboxes**
```swift
    open class func deleteAllInboxes(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete all inboxes

Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Delete all inboxes
InboxControllerAPI.deleteAllInboxes() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInbox**
```swift
    open class func deleteInbox(inboxId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete inbox

Permanently delete an inbox and associated email address aswell as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inboxId = 987 // UUID | inboxId

// Delete inbox
InboxControllerAPI.deleteInbox(inboxId: inboxId) { (response, error) in
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
 **inboxId** | [**UUID**](.md) | inboxId | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllInboxes**
```swift
    open class func getAllInboxes(favourite: Bool? = nil, page: Int? = nil, search: String? = nil, size: Int? = nil, sort: Sort_getAllInboxes? = nil, tag: String? = nil, completion: @escaping (_ data: PageInboxProjection?, _ error: Error?) -> Void)
```

List Inboxes Paginated

List inboxes in paginated form. Allows for page index, page size, and sort direction. Can also filter by favourited or email address like pattern.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let favourite = true // Bool | Optionally filter results for favourites only (optional) (default to false)
let page = 987 // Int | Optional page index in inbox list pagination (optional) (default to 0)
let search = "search_example" // String | Optionally filter by search words partial matching ID, tags, name, and email address (optional)
let size = 987 // Int | Optional page size in inbox list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let tag = "tag_example" // String | Optionally filter by tags (optional)

// List Inboxes Paginated
InboxControllerAPI.getAllInboxes(favourite: favourite, page: page, search: search, size: size, sort: sort, tag: tag) { (response, error) in
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
 **favourite** | **Bool** | Optionally filter results for favourites only | [optional] [default to false]
 **page** | **Int** | Optional page index in inbox list pagination | [optional] [default to 0]
 **search** | **String** | Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **size** | **Int** | Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **tag** | **String** | Optionally filter by tags | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmails**
```swift
    open class func getEmails(inboxId: UUID, limit: Int? = nil, minCount: Int64? = nil, retryTimeout: Int64? = nil, since: Date? = nil, sort: Sort_getEmails? = nil, completion: @escaping (_ data: [EmailPreview]?, _ error: Error?) -> Void)
```

Get emails in an Inbox

List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inboxId = 987 // UUID | Id of inbox that emails belongs to
let limit = 987 // Int | Limit the result set, ordered by received date time sort direction (optional)
let minCount = 987 // Int64 | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. (optional)
let retryTimeout = 987 // Int64 | Maximum milliseconds to spend retrying inbox database until minCount emails are returned (optional)
let since = Date() // Date | Exclude emails received before this ISO 8601 date time (optional)
let sort = "sort_example" // String | Sort the results by received date and direction ASC or DESC (optional)

// Get emails in an Inbox
InboxControllerAPI.getEmails(inboxId: inboxId, limit: limit, minCount: minCount, retryTimeout: retryTimeout, since: since, sort: sort) { (response, error) in
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
 **inboxId** | [**UUID**](.md) | Id of inbox that emails belongs to | 
 **limit** | **Int** | Limit the result set, ordered by received date time sort direction | [optional] 
 **minCount** | **Int64** | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **retryTimeout** | **Int64** | Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **since** | **Date** | Exclude emails received before this ISO 8601 date time | [optional] 
 **sort** | **String** | Sort the results by received date and direction ASC or DESC | [optional] 

### Return type

[**[EmailPreview]**](EmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInbox**
```swift
    open class func getInbox(inboxId: UUID, completion: @escaping (_ data: Inbox?, _ error: Error?) -> Void)
```

Get Inbox

Returns an inbox's properties, including its email address and ID.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inboxId = 987 // UUID | inboxId

// Get Inbox
InboxControllerAPI.getInbox(inboxId: inboxId) { (response, error) in
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
 **inboxId** | [**UUID**](.md) | inboxId | 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboxEmailsPaginated**
```swift
    open class func getInboxEmailsPaginated(inboxId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getInboxEmailsPaginated? = nil, completion: @escaping (_ data: PageEmailPreview?, _ error: Error?) -> Void)
```

Get inbox emails paginated

Get a paginated list of emails in an inbox. Does not hold connections open.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inboxId = 987 // UUID | Id of inbox that emails belongs to
let page = 987 // Int | Optional page index in inbox emails list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox emails list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get inbox emails paginated
InboxControllerAPI.getInboxEmailsPaginated(inboxId: inboxId, page: page, size: size, sort: sort) { (response, error) in
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
 **inboxId** | [**UUID**](.md) | Id of inbox that emails belongs to | 
 **page** | **Int** | Optional page index in inbox emails list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox emails list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageEmailPreview**](PageEmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboxTags**
```swift
    open class func getInboxTags(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Get inbox tags

Get all inbox tags

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get inbox tags
InboxControllerAPI.getInboxTags() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**[String]**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboxes**
```swift
    open class func getInboxes(completion: @escaping (_ data: [Inbox]?, _ error: Error?) -> Void)
```

List Inboxes / Email Addresses

List the inboxes you have created

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List Inboxes / Email Addresses
InboxControllerAPI.getInboxes() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**[Inbox]**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendEmail**
```swift
    open class func sendEmail(inboxId: UUID, sendEmailOptions: SendEmailOptions? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Send Email

Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inboxId = 987 // UUID | ID of the inbox you want to send the email from
let sendEmailOptions = SendEmailOptions(attachments: ["attachments_example"], bcc: ["bcc_example"], body: "body_example", cc: ["cc_example"], charset: "charset_example", from: "from_example", isHTML: false, replyTo: "replyTo_example", sendStrategy: "sendStrategy_example", subject: "subject_example", template: 123, templateVariables: 123, to: ["to_example"], toContacts: [123], toGroup: 123) // SendEmailOptions | Options for the email (optional)

// Send Email
InboxControllerAPI.sendEmail(inboxId: inboxId, sendEmailOptions: sendEmailOptions) { (response, error) in
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
 **inboxId** | [**UUID**](.md) | ID of the inbox you want to send the email from | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions.md) | Options for the email | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setInboxFavourited**
```swift
    open class func setInboxFavourited(inboxId: UUID, setInboxFavouritedOptions: SetInboxFavouritedOptions, completion: @escaping (_ data: Inbox?, _ error: Error?) -> Void)
```

Set inbox favourited state

Set and return new favourite state for an inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inboxId = 987 // UUID | inboxId
let setInboxFavouritedOptions = SetInboxFavouritedOptions(state: false) // SetInboxFavouritedOptions | setInboxFavouritedOptions

// Set inbox favourited state
InboxControllerAPI.setInboxFavourited(inboxId: inboxId, setInboxFavouritedOptions: setInboxFavouritedOptions) { (response, error) in
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
 **inboxId** | [**UUID**](.md) | inboxId | 
 **setInboxFavouritedOptions** | [**SetInboxFavouritedOptions**](SetInboxFavouritedOptions.md) | setInboxFavouritedOptions | 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInbox**
```swift
    open class func updateInbox(inboxId: UUID, updateInboxOptions: UpdateInboxOptions, completion: @escaping (_ data: Inbox?, _ error: Error?) -> Void)
```

Update Inbox

Update editable fields on an inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inboxId = 987 // UUID | inboxId
let updateInboxOptions = UpdateInboxOptions(description: "description_example", expiresAt: Date(), favourite: false, name: "name_example", tags: ["tags_example"]) // UpdateInboxOptions | updateInboxOptions

// Update Inbox
InboxControllerAPI.updateInbox(inboxId: inboxId, updateInboxOptions: updateInboxOptions) { (response, error) in
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
 **inboxId** | [**UUID**](.md) | inboxId | 
 **updateInboxOptions** | [**UpdateInboxOptions**](UpdateInboxOptions.md) | updateInboxOptions | 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

