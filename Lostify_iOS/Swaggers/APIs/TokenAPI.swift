//
// TokenAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class TokenAPI: APIBase {

    public class func mapValuesToQueryItems(values: [String:Any?]) -> [URLQueryItem] {
        return values
            .filter { $0.1 != nil }
            .map { (item: (_key: String, _value: Any?)) -> URLQueryItem in
                URLQueryItem(name: item._key, value:"\(item._value!)")
            }
    }

    /**
     
     
     - parameter provider: (form)  (optional)
     - parameter token: (form)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiTokenPost(provider: String? = nil, token: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        apiTokenPostWithRequestBuilder(provider: provider, token: token).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     
     - POST /api/Token
     
     - parameter provider: (form)  (optional)
     - parameter token: (form)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func apiTokenPostWithRequestBuilder(provider: String? = nil, token: String? = nil) -> RequestBuilder<Void> {
        let path = "/api/Token"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "Provider": provider,
            "Token": token
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}