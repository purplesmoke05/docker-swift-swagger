//
// VolumePruneResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class VolumePruneResponse: JSONEncodable {
    /** Volumes that were deleted */
    public var volumesDeleted: [String]?
    /** Disk space reclaimed in bytes */
    public var spaceReclaimed: Int64?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["VolumesDeleted"] = self.volumesDeleted?.encodeToJSON()
        nillableDictionary["SpaceReclaimed"] = self.spaceReclaimed?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}