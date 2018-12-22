// Auto-generated. Do not edit!

// (in-package giskard_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TaskObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.pose = null;
      this.role = null;
      this.liquid_volume = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('role')) {
        this.role = initObj.role
      }
      else {
        this.role = 0;
      }
      if (initObj.hasOwnProperty('liquid_volume')) {
        this.liquid_volume = initObj.liquid_volume
      }
      else {
        this.liquid_volume = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskObject
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [role]
    bufferOffset = _serializer.uint8(obj.role, buffer, bufferOffset);
    // Serialize message field [liquid_volume]
    bufferOffset = _serializer.float64(obj.liquid_volume, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskObject
    let len;
    let data = new TaskObject(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [role]
    data.role = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [liquid_volume]
    data.liquid_volume = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/TaskObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ba4d8b9cd8d97703bb62b4d8fc1956c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TaskObject(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.role !== undefined) {
      resolved.role = msg.role;
    }
    else {
      resolved.role = 0
    }

    if (msg.liquid_volume !== undefined) {
      resolved.liquid_volume = msg.liquid_volume;
    }
    else {
      resolved.liquid_volume = 0.0
    }

    return resolved;
    }
};

// Constants for message
TaskObject.Constants = {
  INVALID_ROLE: 0,
  SOURCE_ROLE: 1,
  TARGET_ROLE: 2,
}

module.exports = TaskObject;
