//
// SwarmAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class SwarmAPI: APIBase {
    /**
     Initialize a new swarm
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func swarmInit(body body: Body1, completion: ((data: String?, error: ErrorType?) -> Void)) {
        swarmInitWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Initialize a new swarm
     - POST /swarm/init
     - examples: [{example="7v2t30z9blmxuhnyo6s4cpenp", contentType=application/json}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<String> 
     */
    public class func swarmInitWithRequestBuilder(body body: Body1) -> RequestBuilder<String> {
        let path = "/swarm/init"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Inspect swarm
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func swarmInspect(completion: ((data: Swarm?, error: ErrorType?) -> Void)) {
        swarmInspectWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Inspect swarm
     - GET /swarm
     - examples: [{example="", contentType=application/json}]

     - returns: RequestBuilder<Swarm> 
     */
    public class func swarmInspectWithRequestBuilder() -> RequestBuilder<Swarm> {
        let path = "/swarm"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Swarm>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Join an existing swarm
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func swarmJoin(body body: Body2, completion: ((error: ErrorType?) -> Void)) {
        swarmJoinWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Join an existing swarm
     - POST /swarm/join
     
     - parameter body: (body)  

     - returns: RequestBuilder<Void> 
     */
    public class func swarmJoinWithRequestBuilder(body body: Body2) -> RequestBuilder<Void> {
        let path = "/swarm/join"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Leave a swarm
     
     - parameter force: (query) Force leave swarm, even if this is the last manager or that it will break the cluster. (optional, default to false)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func swarmLeave(force force: Bool? = nil, completion: ((error: ErrorType?) -> Void)) {
        swarmLeaveWithRequestBuilder(force: force).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Leave a swarm
     - POST /swarm/leave
     
     - parameter force: (query) Force leave swarm, even if this is the last manager or that it will break the cluster. (optional, default to false)

     - returns: RequestBuilder<Void> 
     */
    public class func swarmLeaveWithRequestBuilder(force force: Bool? = nil) -> RequestBuilder<Void> {
        let path = "/swarm/leave"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "force": force
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Unlock a locked manager
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func swarmUnlock(body body: Body3, completion: ((error: ErrorType?) -> Void)) {
        swarmUnlockWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Unlock a locked manager
     - POST /swarm/unlock
     
     - parameter body: (body)  

     - returns: RequestBuilder<Void> 
     */
    public class func swarmUnlockWithRequestBuilder(body body: Body3) -> RequestBuilder<Void> {
        let path = "/swarm/unlock"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the unlock key
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func swarmUnlockkey(completion: ((data: UnlockKeyResponse?, error: ErrorType?) -> Void)) {
        swarmUnlockkeyWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get the unlock key
     - GET /swarm/unlockkey
     - examples: [{example="{\"UnlockKey\":\"SWMKEY-1-7c37Cc8654o6p38HnroywCi19pllOnGtbdZEgtKxZu8\"}", contentType=application/json}]

     - returns: RequestBuilder<UnlockKeyResponse> 
     */
    public class func swarmUnlockkeyWithRequestBuilder() -> RequestBuilder<UnlockKeyResponse> {
        let path = "/swarm/unlockkey"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<UnlockKeyResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a swarm
     
     - parameter body: (body)  
     - parameter version: (query) The version number of the swarm object being updated. This is required to avoid conflicting writes. 
     - parameter rotateWorkerToken: (query) Rotate the worker join token. (optional, default to false)
     - parameter rotateManagerToken: (query) Rotate the manager join token. (optional, default to false)
     - parameter rotateManagerUnlockKey: (query) Rotate the manager unlock key. (optional, default to false)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func swarmUpdate(body body: SwarmSpec, version: Int64, rotateWorkerToken: Bool? = nil, rotateManagerToken: Bool? = nil, rotateManagerUnlockKey: Bool? = nil, completion: ((error: ErrorType?) -> Void)) {
        swarmUpdateWithRequestBuilder(body: body, version: version, rotateWorkerToken: rotateWorkerToken, rotateManagerToken: rotateManagerToken, rotateManagerUnlockKey: rotateManagerUnlockKey).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a swarm
     - POST /swarm/update
     
     - parameter body: (body)  
     - parameter version: (query) The version number of the swarm object being updated. This is required to avoid conflicting writes. 
     - parameter rotateWorkerToken: (query) Rotate the worker join token. (optional, default to false)
     - parameter rotateManagerToken: (query) Rotate the manager join token. (optional, default to false)
     - parameter rotateManagerUnlockKey: (query) Rotate the manager unlock key. (optional, default to false)

     - returns: RequestBuilder<Void> 
     */
    public class func swarmUpdateWithRequestBuilder(body body: SwarmSpec, version: Int64, rotateWorkerToken: Bool? = nil, rotateManagerToken: Bool? = nil, rotateManagerUnlockKey: Bool? = nil) -> RequestBuilder<Void> {
        let path = "/swarm/update"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}