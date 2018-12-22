// Auto-generated. Do not edit!

// (in-package giskard_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Task = require('../msg/Task.js');

//-----------------------------------------------------------

let MotionPhase = require('../msg/MotionPhase.js');

//-----------------------------------------------------------

class QueryMotionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task = null;
    }
    else {
      if (initObj.hasOwnProperty('task')) {
        this.task = initObj.task
      }
      else {
        this.task = new Task();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QueryMotionRequest
    // Serialize message field [task]
    bufferOffset = Task.serialize(obj.task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QueryMotionRequest
    let len;
    let data = new QueryMotionRequest(null);
    // Deserialize message field [task]
    data.task = Task.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Task.getMessageSize(object.task);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'giskard_msgs/QueryMotionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '248b971a47bd795c45ce9fbd988415f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    giskard_msgs/Task task
    
    ================================================================================
    MSG: giskard_msgs/Task
    # identifier of the task type
    string type
    
    # objects involved in the action
    giskard_msgs/TaskObject[] objects
    
    # for pouring tasks
    float64 pour_volume # in cubic-meters
    
    ================================================================================
    MSG: giskard_msgs/TaskObject
    # A representation of an object which is part of an action.
    # Used for querying task-specific constraints for giskard controllers.
    
    # definitions of possible values for field 'role'
    uint8 INVALID_ROLE=0 # make sure users set a proper role
    uint8 SOURCE_ROLE=1 # object acts as the source of the action
    uint8 TARGET_ROLE=2 # object acts as the target of the action
    
    # unique identifier of the object
    string name
    
    # perceived pose of the object
    geometry_msgs/PoseStamped pose
    
    # role the object will play within a task
    uint8 role
    
    # in case the object is filled with a liquid
    float64 liquid_volume # in cubic-meters
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QueryMotionRequest(null);
    if (msg.task !== undefined) {
      resolved.task = Task.Resolve(msg.task)
    }
    else {
      resolved.task = new Task()
    }

    return resolved;
    }
};

class QueryMotionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.phases = null;
    }
    else {
      if (initObj.hasOwnProperty('phases')) {
        this.phases = initObj.phases
      }
      else {
        this.phases = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QueryMotionResponse
    // Serialize message field [phases]
    // Serialize the length for message field [phases]
    bufferOffset = _serializer.uint32(obj.phases.length, buffer, bufferOffset);
    obj.phases.forEach((val) => {
      bufferOffset = MotionPhase.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QueryMotionResponse
    let len;
    let data = new QueryMotionResponse(null);
    // Deserialize message field [phases]
    // Deserialize array length for message field [phases]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.phases = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.phases[i] = MotionPhase.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.phases.forEach((val) => {
      length += MotionPhase.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'giskard_msgs/QueryMotionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01eec300e82623cfa28d3f868d653808';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    giskard_msgs/MotionPhase[] phases
    
    
    ================================================================================
    MSG: giskard_msgs/MotionPhase
    # definition of a task-specific motion phase
    
    # identifier of the motion phase
    string name
    
    # a list of constraints representing the motion goal
    giskard_msgs/Constraint[] constraints
    
    ================================================================================
    MSG: giskard_msgs/Constraint
    # a string identifying the expression behind the constraint
    string name
    
    # desired lower and upper boundaries that shall be enforced
    float64 lower
    float64 upper
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QueryMotionResponse(null);
    if (msg.phases !== undefined) {
      resolved.phases = new Array(msg.phases.length);
      for (let i = 0; i < resolved.phases.length; ++i) {
        resolved.phases[i] = MotionPhase.Resolve(msg.phases[i]);
      }
    }
    else {
      resolved.phases = []
    }

    return resolved;
    }
};

module.exports = {
  Request: QueryMotionRequest,
  Response: QueryMotionResponse,
  md5sum() { return 'bb38ae62c664e4cfff9e4ebb97163477'; },
  datatype() { return 'giskard_msgs/QueryMotion'; }
};
