// Auto-generated. Do not edit!

// (in-package giskard_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TaskObject = require('./TaskObject.js');

//-----------------------------------------------------------

class Task {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.objects = null;
      this.pour_volume = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
      if (initObj.hasOwnProperty('pour_volume')) {
        this.pour_volume = initObj.pour_volume
      }
      else {
        this.pour_volume = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Task
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = TaskObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pour_volume]
    bufferOffset = _serializer.float64(obj.pour_volume, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Task
    let len;
    let data = new Task(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = TaskObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pour_volume]
    data.pour_volume = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    object.objects.forEach((val) => {
      length += TaskObject.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/Task';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e32762b7c3b4d6c977fae7bf0e0a0db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Task(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = TaskObject.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    if (msg.pour_volume !== undefined) {
      resolved.pour_volume = msg.pour_volume;
    }
    else {
      resolved.pour_volume = 0.0
    }

    return resolved;
    }
};

module.exports = Task;
