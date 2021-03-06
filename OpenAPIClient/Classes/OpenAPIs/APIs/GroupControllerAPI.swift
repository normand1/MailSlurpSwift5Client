//
// GroupControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class GroupControllerAPI {
    /**
     Add contacts to a group
     
     - parameter groupId: (path) groupId 
     - parameter updateGroupContactsOption: (body) updateGroupContactsOption 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addContactsToGroup(groupId: UUID, updateGroupContactsOption: UpdateGroupContacts, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GroupContactsDto?,_ error: Error?) -> Void)) {
        addContactsToGroupWithRequestBuilder(groupId: groupId, updateGroupContactsOption: updateGroupContactsOption).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add contacts to a group
     - PUT /groups/{groupId}/contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path) groupId 
     - parameter updateGroupContactsOption: (body) updateGroupContactsOption 
     - returns: RequestBuilder<GroupContactsDto> 
     */
    open class func addContactsToGroupWithRequestBuilder(groupId: UUID, updateGroupContactsOption: UpdateGroupContacts) -> RequestBuilder<GroupContactsDto> {
        var path = "/groups/{groupId}/contacts"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateGroupContactsOption)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GroupContactsDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a group
     
     - parameter createGroupOptions: (body) createGroupOptions 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createGroup(createGroupOptions: CreateGroupOptions, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GroupDto?,_ error: Error?) -> Void)) {
        createGroupWithRequestBuilder(createGroupOptions: createGroupOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a group
     - POST /groups
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter createGroupOptions: (body) createGroupOptions 
     - returns: RequestBuilder<GroupDto> 
     */
    open class func createGroupWithRequestBuilder(createGroupOptions: CreateGroupOptions) -> RequestBuilder<GroupDto> {
        let path = "/groups"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createGroupOptions)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GroupDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete group
     
     - parameter groupId: (path) groupId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteGroup(groupId: UUID, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteGroupWithRequestBuilder(groupId: groupId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete group
     - DELETE /groups/{groupId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path) groupId 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteGroupWithRequestBuilder(groupId: UUID) -> RequestBuilder<Void> {
        var path = "/groups/{groupId}"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAllGroups: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all Contact Groups in paginated format
     
     - parameter page: (query) Optional page index in inbox list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in inbox list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAllGroups(page: Int? = nil, size: Int? = nil, sort: Sort_getAllGroups? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PageGroupProjection?,_ error: Error?) -> Void)) {
        getAllGroupsWithRequestBuilder(page: page, size: size, sort: sort).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all Contact Groups in paginated format
     - GET /groups/paginated
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in inbox list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in inbox list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - returns: RequestBuilder<PageGroupProjection> 
     */
    open class func getAllGroupsWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAllGroups? = nil) -> RequestBuilder<PageGroupProjection> {
        let path = "/groups/paginated"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "sort": sort?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PageGroupProjection>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get group
     
     - parameter groupId: (path) groupId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroup(groupId: UUID, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GroupDto?,_ error: Error?) -> Void)) {
        getGroupWithRequestBuilder(groupId: groupId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get group
     - GET /groups/{groupId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path) groupId 
     - returns: RequestBuilder<GroupDto> 
     */
    open class func getGroupWithRequestBuilder(groupId: UUID) -> RequestBuilder<GroupDto> {
        var path = "/groups/{groupId}"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GroupDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get group and contacts belonging to it
     
     - parameter groupId: (path) groupId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroupWithContacts(groupId: UUID, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GroupContactsDto?,_ error: Error?) -> Void)) {
        getGroupWithContactsWithRequestBuilder(groupId: groupId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get group and contacts belonging to it
     - GET /groups/{groupId}/contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path) groupId 
     - returns: RequestBuilder<GroupContactsDto> 
     */
    open class func getGroupWithContactsWithRequestBuilder(groupId: UUID) -> RequestBuilder<GroupContactsDto> {
        var path = "/groups/{groupId}/contacts"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GroupContactsDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all groups
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroups(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [GroupProjection]?,_ error: Error?) -> Void)) {
        getGroupsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all groups
     - GET /groups
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<[GroupProjection]> 
     */
    open class func getGroupsWithRequestBuilder() -> RequestBuilder<[GroupProjection]> {
        let path = "/groups"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[GroupProjection]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove contacts from a group
     
     - parameter groupId: (path) groupId 
     - parameter updateGroupContactsOption: (body) updateGroupContactsOption 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeContactsFromGroup(groupId: UUID, updateGroupContactsOption: UpdateGroupContacts, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GroupContactsDto?,_ error: Error?) -> Void)) {
        removeContactsFromGroupWithRequestBuilder(groupId: groupId, updateGroupContactsOption: updateGroupContactsOption).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove contacts from a group
     - DELETE /groups/{groupId}/contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path) groupId 
     - parameter updateGroupContactsOption: (body) updateGroupContactsOption 
     - returns: RequestBuilder<GroupContactsDto> 
     */
    open class func removeContactsFromGroupWithRequestBuilder(groupId: UUID, updateGroupContactsOption: UpdateGroupContacts) -> RequestBuilder<GroupContactsDto> {
        var path = "/groups/{groupId}/contacts"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateGroupContactsOption)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GroupContactsDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
