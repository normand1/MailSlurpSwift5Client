//
// EmailControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class EmailControllerAPI {
    /**
     Delete all emails
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAllEmails(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteAllEmailsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete all emails
     - DELETE /emails
     - Deletes all emails in your account. Be careful as emails cannot be recovered
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<Void> 
     */
    open class func deleteAllEmailsWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/emails"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete an email
     
     - parameter emailId: (path) emailId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteEmail(emailId: UUID, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteEmailWithRequestBuilder(emailId: emailId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete an email
     - DELETE /emails/{emailId}
     - Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter emailId: (path) emailId 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteEmailWithRequestBuilder(emailId: UUID) -> RequestBuilder<Void> {
        var path = "/emails/{emailId}"
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get email attachment bytes
     
     - parameter attachmentId: (path) attachmentId 
     - parameter emailId: (path) emailId 
     - parameter apiKey: (query) Can pass apiKey in url for this request if you wish to download the file in a browser (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadAttachment(attachmentId: String, emailId: UUID, apiKey: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadAttachmentWithRequestBuilder(attachmentId: attachmentId, emailId: emailId, apiKey: apiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get email attachment bytes
     - GET /emails/{emailId}/attachments/{attachmentId}
     - Returns the specified attachment for a given email as a byte stream (file download). You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter attachmentId: (path) attachmentId 
     - parameter emailId: (path) emailId 
     - parameter apiKey: (query) Can pass apiKey in url for this request if you wish to download the file in a browser (optional)
     - returns: RequestBuilder<Data> 
     */
    open class func downloadAttachmentWithRequestBuilder(attachmentId: String, emailId: UUID, apiKey: String? = nil) -> RequestBuilder<Data> {
        var path = "/emails/{emailId}/attachments/{attachmentId}"
        let attachmentIdPreEscape = "\(APIHelper.mapValueToPathItem(attachmentId))"
        let attachmentIdPostEscape = attachmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{attachmentId}", with: attachmentIdPostEscape, options: .literal, range: nil)
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "apiKey": apiKey?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Data>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Forward email
     
     - parameter emailId: (path) emailId 
     - parameter forwardEmailOptions: (body) forwardEmailOptions 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func forwardEmail(emailId: UUID, forwardEmailOptions: ForwardEmailOptions, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        forwardEmailWithRequestBuilder(emailId: emailId, forwardEmailOptions: forwardEmailOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Forward email
     - POST /emails/{emailId}/forward
     - Forward an existing email to new recipients.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter emailId: (path) emailId 
     - parameter forwardEmailOptions: (body) forwardEmailOptions 
     - returns: RequestBuilder<Void> 
     */
    open class func forwardEmailWithRequestBuilder(emailId: UUID, forwardEmailOptions: ForwardEmailOptions) -> RequestBuilder<Void> {
        var path = "/emails/{emailId}/forward"
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: forwardEmailOptions)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get email attachment metadata
     
     - parameter attachmentId: (path) attachmentId 
     - parameter emailId: (path) emailId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAttachmentMetaData(attachmentId: String, emailId: UUID, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AttachmentMetaData?,_ error: Error?) -> Void)) {
        getAttachmentMetaDataWithRequestBuilder(attachmentId: attachmentId, emailId: emailId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get email attachment metadata
     - GET /emails/{emailId}/attachments/{attachmentId}/metadata
     - Returns the metadata such as name and content-type for a given attachment and email.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter attachmentId: (path) attachmentId 
     - parameter emailId: (path) emailId 
     - returns: RequestBuilder<AttachmentMetaData> 
     */
    open class func getAttachmentMetaDataWithRequestBuilder(attachmentId: String, emailId: UUID) -> RequestBuilder<AttachmentMetaData> {
        var path = "/emails/{emailId}/attachments/{attachmentId}/metadata"
        let attachmentIdPreEscape = "\(APIHelper.mapValueToPathItem(attachmentId))"
        let attachmentIdPostEscape = attachmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{attachmentId}", with: attachmentIdPostEscape, options: .literal, range: nil)
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<AttachmentMetaData>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all email attachment metadata
     
     - parameter emailId: (path) emailId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAttachments(emailId: UUID, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [AttachmentMetaData]?,_ error: Error?) -> Void)) {
        getAttachmentsWithRequestBuilder(emailId: emailId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all email attachment metadata
     - GET /emails/{emailId}/attachments
     - Returns an array of attachment metadata such as name and content-type for a given email if present.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter emailId: (path) emailId 
     - returns: RequestBuilder<[AttachmentMetaData]> 
     */
    open class func getAttachmentsWithRequestBuilder(emailId: UUID) -> RequestBuilder<[AttachmentMetaData]> {
        var path = "/emails/{emailId}/attachments"
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[AttachmentMetaData]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get email content
     
     - parameter emailId: (path) emailId 
     - parameter decode: (query) Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getEmail(emailId: UUID, decode: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Email?,_ error: Error?) -> Void)) {
        getEmailWithRequestBuilder(emailId: emailId, decode: decode).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get email content
     - GET /emails/{emailId}
     - Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter emailId: (path) emailId 
     - parameter decode: (query) Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing (optional, default to false)
     - returns: RequestBuilder<Email> 
     */
    open class func getEmailWithRequestBuilder(emailId: UUID, decode: Bool? = nil) -> RequestBuilder<Email> {
        var path = "/emails/{emailId}"
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "decode": decode?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Email>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get email content as HTML
     
     - parameter emailId: (path) emailId 
     - parameter decode: (query) decode (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getEmailHTML(emailId: UUID, decode: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        getEmailHTMLWithRequestBuilder(emailId: emailId, decode: decode).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get email content as HTML
     - GET /emails/{emailId}/html
     - Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter emailId: (path) emailId 
     - parameter decode: (query) decode (optional, default to false)
     - returns: RequestBuilder<String> 
     */
    open class func getEmailHTMLWithRequestBuilder(emailId: UUID, decode: Bool? = nil) -> RequestBuilder<String> {
        var path = "/emails/{emailId}/html"
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "decode": decode?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<String>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getEmailsPaginated: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all emails
     
     - parameter inboxId: (query) Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
     - parameter page: (query) Optional page index in email list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter unreadOnly: (query) Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getEmailsPaginated(inboxId: [UUID]? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getEmailsPaginated? = nil, unreadOnly: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PageEmailProjection?,_ error: Error?) -> Void)) {
        getEmailsPaginatedWithRequestBuilder(inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all emails
     - GET /emails
     - By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
     - parameter page: (query) Optional page index in email list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter unreadOnly: (query) Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional, default to false)
     - returns: RequestBuilder<PageEmailProjection> 
     */
    open class func getEmailsPaginatedWithRequestBuilder(inboxId: [UUID]? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getEmailsPaginated? = nil, unreadOnly: Bool? = nil) -> RequestBuilder<PageEmailProjection> {
        let path = "/emails"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "sort": sort?.encodeToJSON(), 
            "unreadOnly": unreadOnly?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PageEmailProjection>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get raw email string
     
     - parameter emailId: (path) emailId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRawEmailContents(emailId: UUID, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        getRawEmailContentsWithRequestBuilder(emailId: emailId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get raw email string
     - GET /emails/{emailId}/raw
     - Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter emailId: (path) emailId 
     - returns: RequestBuilder<String> 
     */
    open class func getRawEmailContentsWithRequestBuilder(emailId: UUID) -> RequestBuilder<String> {
        var path = "/emails/{emailId}/raw"
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get raw email in JSON
     
     - parameter emailId: (path) emailId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRawEmailJson(emailId: UUID, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: RawEmailJson?,_ error: Error?) -> Void)) {
        getRawEmailJsonWithRequestBuilder(emailId: emailId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get raw email in JSON
     - GET /emails/{emailId}/raw/json
     - Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter emailId: (path) emailId 
     - returns: RequestBuilder<RawEmailJson> 
     */
    open class func getRawEmailJsonWithRequestBuilder(emailId: UUID) -> RequestBuilder<RawEmailJson> {
        var path = "/emails/{emailId}/raw/json"
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<RawEmailJson>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get unread email count
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUnreadEmailCount(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UnreadCount?,_ error: Error?) -> Void)) {
        getUnreadEmailCountWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get unread email count
     - GET /emails/unreadCount
     - Get number of emails unread
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<UnreadCount> 
     */
    open class func getUnreadEmailCountWithRequestBuilder() -> RequestBuilder<UnreadCount> {
        let path = "/emails/unreadCount"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UnreadCount>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Validate email
     
     - parameter emailId: (path) emailId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func validateEmail(emailId: UUID, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ValidationDto?,_ error: Error?) -> Void)) {
        validateEmailWithRequestBuilder(emailId: emailId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Validate email
     - POST /emails/{emailId}/validate
     - Validate the HTML content of email if HTML is found. Considered valid if no HTML.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter emailId: (path) emailId 
     - returns: RequestBuilder<ValidationDto> 
     */
    open class func validateEmailWithRequestBuilder(emailId: UUID) -> RequestBuilder<ValidationDto> {
        var path = "/emails/{emailId}/validate"
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ValidationDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
