//
// TaskAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class TaskAPI: APIBase {
    /**
     Inspect a task
     
     - parameter id: (path) ID of the task 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func taskInspect(id id: String, completion: ((data: Task?, error: ErrorType?) -> Void)) {
        taskInspectWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Inspect a task
     - GET /tasks/{id}
     - examples: [{example={
  "ID" : "0kzzo1i0y4jz6027t0k7aezc7",
  "Version" : {
    "Index" : 71
  },
  "CreatedAt" : "2016-06-07T21:07:31.171892745Z",
  "UpdatedAt" : "2016-06-07T21:07:31.376370513Z",
  "Spec" : {
    "ContainerSpec" : {
      "Image" : "redis"
    },
    "Resources" : {
      "Limits" : { },
      "Reservations" : { }
    },
    "RestartPolicy" : {
      "Condition" : "any",
      "MaxAttempts" : 0
    },
    "Placement" : { }
  },
  "ServiceID" : "9mnpnzenvg8p8tdbtq4wvbkcz",
  "Slot" : 1,
  "NodeID" : "60gvrl6tm78dmak4yl7srz94v",
  "Status" : {
    "Timestamp" : "2016-06-07T21:07:31.290032978Z",
    "State" : "running",
    "Message" : "started",
    "ContainerStatus" : {
      "ContainerID" : "e5d62702a1b48d01c3e02ca1e0212a250801fa8d67caca0b6f35919ebc12f035",
      "PID" : 677
    }
  },
  "DesiredState" : "running",
  "NetworksAttachments" : [ {
    "Network" : {
      "ID" : "4qvuz4ko70xaltuqbt8956gd1",
      "Version" : {
        "Index" : 18
      },
      "CreatedAt" : "2016-06-07T20:31:11.912919752Z",
      "UpdatedAt" : "2016-06-07T21:07:29.955277358Z",
      "Spec" : {
        "Name" : "ingress",
        "Labels" : {
          "com.docker.swarm.internal" : "true"
        },
        "DriverConfiguration" : { },
        "IPAMOptions" : {
          "Driver" : { },
          "Configs" : [ {
            "Subnet" : "10.255.0.0/16",
            "Gateway" : "10.255.0.1"
          } ]
        }
      },
      "DriverState" : {
        "Name" : "overlay",
        "Options" : {
          "com.docker.network.driver.overlay.vxlanid_list" : "256"
        }
      },
      "IPAMOptions" : {
        "Driver" : {
          "Name" : "default"
        },
        "Configs" : [ {
          "Subnet" : "10.255.0.0/16",
          "Gateway" : "10.255.0.1"
        } ]
      }
    },
    "Addresses" : [ "10.255.0.10/16" ]
  } ],
  "AssignedGenericResources" : [ {
    "DiscreteResourceSpec" : {
      "Kind" : "SSD",
      "Value" : 3
    }
  }, {
    "NamedResourceSpec" : {
      "Kind" : "GPU",
      "Value" : "UUID1"
    }
  }, {
    "NamedResourceSpec" : {
      "Kind" : "GPU",
      "Value" : "UUID2"
    }
  } ]
}, contentType=application/json}]
     
     - parameter id: (path) ID of the task 

     - returns: RequestBuilder<Task> 
     */
    public class func taskInspectWithRequestBuilder(id id: String) -> RequestBuilder<Task> {
        var path = "/tasks/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Task>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List tasks
     
     - parameter filters: (query) A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the tasks list. Available filters:  - &#x60;desired-state&#x3D;(running | shutdown | accepted)&#x60; - &#x60;id&#x3D;&lt;task id&gt;&#x60; - &#x60;label&#x3D;key&#x60; or &#x60;label&#x3D;\&quot;key&#x3D;value\&quot;&#x60; - &#x60;name&#x3D;&lt;task name&gt;&#x60; - &#x60;node&#x3D;&lt;node id or name&gt;&#x60; - &#x60;service&#x3D;&lt;service name&gt;&#x60;  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func taskList(filters filters: String? = nil, completion: ((data: [Task]?, error: ErrorType?) -> Void)) {
        taskListWithRequestBuilder(filters: filters).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List tasks
     - GET /tasks
     - examples: [{example=[ {
  "ID" : "0kzzo1i0y4jz6027t0k7aezc7",
  "Version" : {
    "Index" : 71
  },
  "CreatedAt" : "2016-06-07T21:07:31.171892745Z",
  "UpdatedAt" : "2016-06-07T21:07:31.376370513Z",
  "Spec" : {
    "ContainerSpec" : {
      "Image" : "redis"
    },
    "Resources" : {
      "Limits" : { },
      "Reservations" : { }
    },
    "RestartPolicy" : {
      "Condition" : "any",
      "MaxAttempts" : 0
    },
    "Placement" : { }
  },
  "ServiceID" : "9mnpnzenvg8p8tdbtq4wvbkcz",
  "Slot" : 1,
  "NodeID" : "60gvrl6tm78dmak4yl7srz94v",
  "Status" : {
    "Timestamp" : "2016-06-07T21:07:31.290032978Z",
    "State" : "running",
    "Message" : "started",
    "ContainerStatus" : {
      "ContainerID" : "e5d62702a1b48d01c3e02ca1e0212a250801fa8d67caca0b6f35919ebc12f035",
      "PID" : 677
    }
  },
  "DesiredState" : "running",
  "NetworksAttachments" : [ {
    "Network" : {
      "ID" : "4qvuz4ko70xaltuqbt8956gd1",
      "Version" : {
        "Index" : 18
      },
      "CreatedAt" : "2016-06-07T20:31:11.912919752Z",
      "UpdatedAt" : "2016-06-07T21:07:29.955277358Z",
      "Spec" : {
        "Name" : "ingress",
        "Labels" : {
          "com.docker.swarm.internal" : "true"
        },
        "DriverConfiguration" : { },
        "IPAMOptions" : {
          "Driver" : { },
          "Configs" : [ {
            "Subnet" : "10.255.0.0/16",
            "Gateway" : "10.255.0.1"
          } ]
        }
      },
      "DriverState" : {
        "Name" : "overlay",
        "Options" : {
          "com.docker.network.driver.overlay.vxlanid_list" : "256"
        }
      },
      "IPAMOptions" : {
        "Driver" : {
          "Name" : "default"
        },
        "Configs" : [ {
          "Subnet" : "10.255.0.0/16",
          "Gateway" : "10.255.0.1"
        } ]
      }
    },
    "Addresses" : [ "10.255.0.10/16" ]
  } ]
}, {
  "ID" : "1yljwbmlr8er2waf8orvqpwms",
  "Version" : {
    "Index" : 30
  },
  "CreatedAt" : "2016-06-07T21:07:30.019104782Z",
  "UpdatedAt" : "2016-06-07T21:07:30.231958098Z",
  "Name" : "hopeful_cori",
  "Spec" : {
    "ContainerSpec" : {
      "Image" : "redis"
    },
    "Resources" : {
      "Limits" : { },
      "Reservations" : { }
    },
    "RestartPolicy" : {
      "Condition" : "any",
      "MaxAttempts" : 0
    },
    "Placement" : { }
  },
  "ServiceID" : "9mnpnzenvg8p8tdbtq4wvbkcz",
  "Slot" : 1,
  "NodeID" : "60gvrl6tm78dmak4yl7srz94v",
  "Status" : {
    "Timestamp" : "2016-06-07T21:07:30.202183143Z",
    "State" : "shutdown",
    "Message" : "shutdown",
    "ContainerStatus" : {
      "ContainerID" : "1cf8d63d18e79668b0004a4be4c6ee58cddfad2dae29506d8781581d0688a213"
    }
  },
  "DesiredState" : "shutdown",
  "NetworksAttachments" : [ {
    "Network" : {
      "ID" : "4qvuz4ko70xaltuqbt8956gd1",
      "Version" : {
        "Index" : 18
      },
      "CreatedAt" : "2016-06-07T20:31:11.912919752Z",
      "UpdatedAt" : "2016-06-07T21:07:29.955277358Z",
      "Spec" : {
        "Name" : "ingress",
        "Labels" : {
          "com.docker.swarm.internal" : "true"
        },
        "DriverConfiguration" : { },
        "IPAMOptions" : {
          "Driver" : { },
          "Configs" : [ {
            "Subnet" : "10.255.0.0/16",
            "Gateway" : "10.255.0.1"
          } ]
        }
      },
      "DriverState" : {
        "Name" : "overlay",
        "Options" : {
          "com.docker.network.driver.overlay.vxlanid_list" : "256"
        }
      },
      "IPAMOptions" : {
        "Driver" : {
          "Name" : "default"
        },
        "Configs" : [ {
          "Subnet" : "10.255.0.0/16",
          "Gateway" : "10.255.0.1"
        } ]
      }
    },
    "Addresses" : [ "10.255.0.5/16" ]
  } ]
} ], contentType=application/json}]
     
     - parameter filters: (query) A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the tasks list. Available filters:  - &#x60;desired-state&#x3D;(running | shutdown | accepted)&#x60; - &#x60;id&#x3D;&lt;task id&gt;&#x60; - &#x60;label&#x3D;key&#x60; or &#x60;label&#x3D;\&quot;key&#x3D;value\&quot;&#x60; - &#x60;name&#x3D;&lt;task name&gt;&#x60; - &#x60;node&#x3D;&lt;node id or name&gt;&#x60; - &#x60;service&#x3D;&lt;service name&gt;&#x60;  (optional)

     - returns: RequestBuilder<[Task]> 
     */
    public class func taskListWithRequestBuilder(filters filters: String? = nil) -> RequestBuilder<[Task]> {
        let path = "/tasks"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filters": filters
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Task]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}