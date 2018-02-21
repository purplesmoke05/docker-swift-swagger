//
// IPAM.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class IPAM: JSONEncodable {
    /** Name of the IPAM driver to use. */
    public var driver: String?
    /** List of IPAM configuration options, specified as a map: &#x60;{\&quot;Subnet\&quot;: &lt;CIDR&gt;, \&quot;IPRange\&quot;: &lt;CIDR&gt;, \&quot;Gateway\&quot;: &lt;IP address&gt;, \&quot;AuxAddress\&quot;: &lt;device_name:IP address&gt;}&#x60; */
    public var config: [[String:String]]?
    /** Driver-specific options, specified as a map. */
    public var options: [[String:String]]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Driver"] = self.driver
        nillableDictionary["Config"] = self.config?.encodeToJSON()
        nillableDictionary["Options"] = self.options?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}