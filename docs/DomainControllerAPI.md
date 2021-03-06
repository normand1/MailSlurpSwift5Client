# DomainControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDomain**](DomainControllerAPI.md#createdomain) | **POST** /domains | Create Domain
[**deleteDomain**](DomainControllerAPI.md#deletedomain) | **DELETE** /domains/{id} | Delete a domain
[**getDomain**](DomainControllerAPI.md#getdomain) | **GET** /domains/{id} | Get a domain
[**getDomains**](DomainControllerAPI.md#getdomains) | **GET** /domains | Get domains


# **createDomain**
```swift
    open class func createDomain(domainOptions: CreateDomainOptions, completion: @escaping (_ data: DomainDto?, _ error: Error?) -> Void)
```

Create Domain

Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let domainOptions = CreateDomainOptions(domain: "domain_example") // CreateDomainOptions | domainOptions

// Create Domain
DomainControllerAPI.createDomain(domainOptions: domainOptions) { (response, error) in
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
 **domainOptions** | [**CreateDomainOptions**](CreateDomainOptions.md) | domainOptions | 

### Return type

[**DomainDto**](DomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDomain**
```swift
    open class func deleteDomain(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a domain

Delete a domain. This will disable any existing inboxes that use this domain.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | id

// Delete a domain
DomainControllerAPI.deleteDomain(id: id) { (response, error) in
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
 **id** | [**UUID**](.md) | id | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDomain**
```swift
    open class func getDomain(id: UUID, completion: @escaping (_ data: DomainDto?, _ error: Error?) -> Void)
```

Get a domain

Returns domain verification status and tokens for a given domain

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | id

// Get a domain
DomainControllerAPI.getDomain(id: id) { (response, error) in
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
 **id** | [**UUID**](.md) | id | 

### Return type

[**DomainDto**](DomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDomains**
```swift
    open class func getDomains(completion: @escaping (_ data: [DomainPreview]?, _ error: Error?) -> Void)
```

Get domains

List all custom domains you have created

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get domains
DomainControllerAPI.getDomains() { (response, error) in
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

[**[DomainPreview]**](DomainPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

