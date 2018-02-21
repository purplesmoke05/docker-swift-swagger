//
// ConfigSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ConfigSpec: JSONEncodable {
    /** User-defined name of the config. */
    public var name: String?
    /** User-defined key/value metadata. */
    public var labels: [String:String]?
    /** Base64-url-safe-encoded ([RFC 4648](https://tools.ietf.org/html/rfc4648#section-3.2)) config data.  */
    public var data: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Name"] = self.name
        nillableDictionary["Labels"] = self.labels?.encodeToJSON()
        nillableDictionary["Data"] = self.data
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}