# TemplateControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTemplate**](TemplateControllerAPI.md#createtemplate) | **POST** /templates | Create a Template
[**deleteTemplate**](TemplateControllerAPI.md#deletetemplate) | **DELETE** /templates/{TemplateId} | Delete Template
[**getAllTemplates**](TemplateControllerAPI.md#getalltemplates) | **GET** /templates/paginated | Get all Templates in paginated format
[**getTemplate**](TemplateControllerAPI.md#gettemplate) | **GET** /templates/{TemplateId} | Get Template
[**getTemplates**](TemplateControllerAPI.md#gettemplates) | **GET** /templates | Get all Templates


# **createTemplate**
```swift
    open class func createTemplate(createTemplateOptions: CreateTemplateOptions, completion: @escaping (_ data: TemplateDto?, _ error: Error?) -> Void)
```

Create a Template

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createTemplateOptions = CreateTemplateOptions(name: "name_example", content: "content_example") // CreateTemplateOptions | createTemplateOptions

// Create a Template
TemplateControllerAPI.createTemplate(createTemplateOptions: createTemplateOptions) { (response, error) in
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
 **createTemplateOptions** | [**CreateTemplateOptions**](CreateTemplateOptions.md) | createTemplateOptions | 

### Return type

[**TemplateDto**](TemplateDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTemplate**
```swift
    open class func deleteTemplate(templateId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Template

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let templateId = 987 // UUID | TemplateId

// Delete Template
TemplateControllerAPI.deleteTemplate(templateId: templateId) { (response, error) in
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
 **templateId** | [**UUID**](.md) | TemplateId | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTemplates**
```swift
    open class func getAllTemplates(page: Int? = nil, size: Int? = nil, sort: Sort_getAllTemplates? = nil, completion: @escaping (_ data: PageTemplateProjection?, _ error: Error?) -> Void)
```

Get all Templates in paginated format

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let page = 987 // Int | Optional page index in inbox list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all Templates in paginated format
TemplateControllerAPI.getAllTemplates(page: page, size: size, sort: sort) { (response, error) in
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
 **page** | **Int** | Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageTemplateProjection**](PageTemplateProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTemplate**
```swift
    open class func getTemplate(templateId: UUID, completion: @escaping (_ data: TemplateDto?, _ error: Error?) -> Void)
```

Get Template

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let templateId = 987 // UUID | TemplateId

// Get Template
TemplateControllerAPI.getTemplate(templateId: templateId) { (response, error) in
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
 **templateId** | [**UUID**](.md) | TemplateId | 

### Return type

[**TemplateDto**](TemplateDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTemplates**
```swift
    open class func getTemplates(completion: @escaping (_ data: [TemplateProjection]?, _ error: Error?) -> Void)
```

Get all Templates

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get all Templates
TemplateControllerAPI.getTemplates() { (response, error) in
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

[**[TemplateProjection]**](TemplateProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

