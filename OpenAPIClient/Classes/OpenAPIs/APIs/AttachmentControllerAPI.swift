//
// AttachmentControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class AttachmentControllerAPI {
    /**
     Upload an attachment for sending
     
     - parameter uploadOptions: (body) uploadOptions 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadAttachment(uploadOptions: UploadAttachmentOptions, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        uploadAttachmentWithRequestBuilder(uploadOptions: uploadOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upload an attachment for sending
     - POST /attachments
     - When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter uploadOptions: (body) uploadOptions 
     - returns: RequestBuilder<[String]> 
     */
    open class func uploadAttachmentWithRequestBuilder(uploadOptions: UploadAttachmentOptions) -> RequestBuilder<[String]> {
        let path = "/attachments"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: uploadOptions)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[String]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Upload an attachment for sending using Multipart Form
     
     - parameter file: (form) file 
     - parameter contentType: (query) contentType (optional)
     - parameter filename: (query) filename (optional)
     - parameter xFilename: (query) x-filename (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadMultipartForm(file: URL, contentType: String? = nil, filename: String? = nil, xFilename: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        uploadMultipartFormWithRequestBuilder(file: file, contentType: contentType, filename: filename, xFilename: xFilename).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upload an attachment for sending using Multipart Form
     - POST /attachments/multipart
     - When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter file: (form) file 
     - parameter contentType: (query) contentType (optional)
     - parameter filename: (query) filename (optional)
     - parameter xFilename: (query) x-filename (optional)
     - returns: RequestBuilder<[String]> 
     */
    open class func uploadMultipartFormWithRequestBuilder(file: URL, contentType: String? = nil, filename: String? = nil, xFilename: String? = nil) -> RequestBuilder<[String]> {
        let path = "/attachments/multipart"
        let URLString = OpenAPIClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "file": file.encodeToJSON()
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "contentType": contentType?.encodeToJSON(), 
            "filename": filename?.encodeToJSON(), 
            "x-filename": xFilename?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[String]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
