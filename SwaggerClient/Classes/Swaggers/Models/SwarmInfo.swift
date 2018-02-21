//
// SwarmInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Represents generic information about swarm.  */
public class SwarmInfo: JSONEncodable {
    /** Unique identifier of for this node in the swarm. */
    public var nodeID: String?
    /** IP address at which this node can be reached by other nodes in the swarm.  */
    public var nodeAddr: String?
    public var localNodeState: LocalNodeState?
    public var controlAvailable: Bool?
    public var error: String?
    /** List of ID&#39;s and addresses of other managers in the swarm.  */
    public var remoteManagers: [PeerNode]?
    /** Total number of nodes in the swarm. */
    public var nodes: Int32?
    /** Total number of managers in the swarm. */
    public var managers: Int32?
    public var cluster: ClusterInfo?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["NodeID"] = self.nodeID
        nillableDictionary["NodeAddr"] = self.nodeAddr
        nillableDictionary["LocalNodeState"] = self.localNodeState?.encodeToJSON()
        nillableDictionary["ControlAvailable"] = self.controlAvailable
        nillableDictionary["Error"] = self.error
        nillableDictionary["RemoteManagers"] = self.remoteManagers?.encodeToJSON()
        nillableDictionary["Nodes"] = self.nodes?.encodeToJSON()
        nillableDictionary["Managers"] = self.managers?.encodeToJSON()
        nillableDictionary["Cluster"] = self.cluster?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}