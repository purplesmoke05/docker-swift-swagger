//
// SecretSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class SecretSpec: JSONEncodable {
    /** User-defined name of the secret. */
    public var name: String?
    /** User-defined key/value metadata. */
    public var labels: [String:String]?
    /** Base64-url-safe-encoded ([RFC 4648](https://tools.ietf.org/html/rfc4648#section-3.2)) data to store as secret.  This field is only used to _create_ a secret, and is not returned by other endpoints.  */
    public var data: String?
    /** Name of the secrets driver used to fetch the secret&#39;s value from an external secret store */
    public var driver: Driver?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Name"] = self.name
        nillableDictionary["Labels"] = self.labels?.encodeToJSON()
        nillableDictionary["Data"] = self.data
        nillableDictionary["Driver"] = self.driver?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}