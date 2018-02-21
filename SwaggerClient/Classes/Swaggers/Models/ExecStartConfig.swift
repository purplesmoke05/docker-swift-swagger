//
// ExecStartConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ExecStartConfig: JSONEncodable {
    /** Detach from the command. */
    public var detach: Bool?
    /** Allocate a pseudo-TTY. */
    public var tty: Bool?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Detach"] = self.detach
        nillableDictionary["Tty"] = self.tty
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}