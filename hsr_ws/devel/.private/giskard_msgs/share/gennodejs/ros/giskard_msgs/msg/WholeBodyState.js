// Auto-generated. Do not edit!

// (in-package giskard_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SemanticFloat64 = require('./SemanticFloat64.js');
let SemanticBool = require('./SemanticBool.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WholeBodyState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.running_time = null;
      this.left_arm_max_vel = null;
      this.right_arm_max_vel = null;
      this.torso_vel = null;
      this.convergence_values = null;
      this.motion_started = null;
      this.motion_old = null;
      this.torso_moving = null;
      this.left_arm_moving = null;
      this.right_arm_moving = null;
      this.convergence_flags = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('running_time')) {
        this.running_time = initObj.running_time
      }
      else {
        this.running_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('left_arm_max_vel')) {
        this.left_arm_max_vel = initObj.left_arm_max_vel
      }
      else {
        this.left_arm_max_vel = 0.0;
      }
      if (initObj.hasOwnProperty('right_arm_max_vel')) {
        this.right_arm_max_vel = initObj.right_arm_max_vel
      }
      else {
        this.right_arm_max_vel = 0.0;
      }
      if (initObj.hasOwnProperty('torso_vel')) {
        this.torso_vel = initObj.torso_vel
      }
      else {
        this.torso_vel = 0.0;
      }
      if (initObj.hasOwnProperty('convergence_values')) {
        this.convergence_values = initObj.convergence_values
      }
      else {
        this.convergence_values = [];
      }
      if (initObj.hasOwnProperty('motion_started')) {
        this.motion_started = initObj.motion_started
      }
      else {
        this.motion_started = false;
      }
      if (initObj.hasOwnProperty('motion_old')) {
        this.motion_old = initObj.motion_old
      }
      else {
        this.motion_old = false;
      }
      if (initObj.hasOwnProperty('torso_moving')) {
        this.torso_moving = initObj.torso_moving
      }
      else {
        this.torso_moving = false;
      }
      if (initObj.hasOwnProperty('left_arm_moving')) {
        this.left_arm_moving = initObj.left_arm_moving
      }
      else {
        this.left_arm_moving = false;
      }
      if (initObj.hasOwnProperty('right_arm_moving')) {
        this.right_arm_moving = initObj.right_arm_moving
      }
      else {
        this.right_arm_moving = false;
      }
      if (initObj.hasOwnProperty('convergence_flags')) {
        this.convergence_flags = initObj.convergence_flags
      }
      else {
        this.convergence_flags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WholeBodyState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [running_time]
    bufferOffset = _serializer.duration(obj.running_time, buffer, bufferOffset);
    // Serialize message field [left_arm_max_vel]
    bufferOffset = _serializer.float64(obj.left_arm_max_vel, buffer, bufferOffset);
    // Serialize message field [right_arm_max_vel]
    bufferOffset = _serializer.float64(obj.right_arm_max_vel, buffer, bufferOffset);
    // Serialize message field [torso_vel]
    bufferOffset = _serializer.float64(obj.torso_vel, buffer, bufferOffset);
    // Serialize message field [convergence_values]
    // Serialize the length for message field [convergence_values]
    bufferOffset = _serializer.uint32(obj.convergence_values.length, buffer, bufferOffset);
    obj.convergence_values.forEach((val) => {
      bufferOffset = SemanticFloat64.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [motion_started]
    bufferOffset = _serializer.bool(obj.motion_started, buffer, bufferOffset);
    // Serialize message field [motion_old]
    bufferOffset = _serializer.bool(obj.motion_old, buffer, bufferOffset);
    // Serialize message field [torso_moving]
    bufferOffset = _serializer.bool(obj.torso_moving, buffer, bufferOffset);
    // Serialize message field [left_arm_moving]
    bufferOffset = _serializer.bool(obj.left_arm_moving, buffer, bufferOffset);
    // Serialize message field [right_arm_moving]
    bufferOffset = _serializer.bool(obj.right_arm_moving, buffer, bufferOffset);
    // Serialize message field [convergence_flags]
    // Serialize the length for message field [convergence_flags]
    bufferOffset = _serializer.uint32(obj.convergence_flags.length, buffer, bufferOffset);
    obj.convergence_flags.forEach((val) => {
      bufferOffset = SemanticBool.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WholeBodyState
    let len;
    let data = new WholeBodyState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [running_time]
    data.running_time = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [left_arm_max_vel]
    data.left_arm_max_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_arm_max_vel]
    data.right_arm_max_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [torso_vel]
    data.torso_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [convergence_values]
    // Deserialize array length for message field [convergence_values]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.convergence_values = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.convergence_values[i] = SemanticFloat64.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [motion_started]
    data.motion_started = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motion_old]
    data.motion_old = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [torso_moving]
    data.torso_moving = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_arm_moving]
    data.left_arm_moving = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_arm_moving]
    data.right_arm_moving = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [convergence_flags]
    // Deserialize array length for message field [convergence_flags]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.convergence_flags = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.convergence_flags[i] = SemanticBool.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.convergence_values.forEach((val) => {
      length += SemanticFloat64.getMessageSize(val);
    });
    object.convergence_flags.forEach((val) => {
      length += SemanticBool.getMessageSize(val);
    });
    return length + 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/WholeBodyState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b441f43466bb7375e7ea0632d6d9b0f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # only using timestamp for the moment
    std_msgs/Header header
    
    # feature values used to make decisions about succeeded actions
    duration running_time
    float64 left_arm_max_vel
    float64 right_arm_max_vel
    float64 torso_vel
    giskard_msgs/SemanticFloat64[] convergence_values # internal values used to decide convergence
    
    # classification results used to decide whether action succeeded
    bool motion_started # true, as soon low-level controller has started execution the command
    bool motion_old # true, if time passed since start of motion is above threshold
    bool torso_moving # true, if torso velocity is above threshold
    bool left_arm_moving # true, if velocity of any joint of left arm is above threshold
    bool right_arm_moving # true, if velocity of any joint of right arm is above threshold
    giskard_msgs/SemanticBool[] convergence_flags # true, if the corresponding feature values are below a threshold
    
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
    MSG: giskard_msgs/SemanticFloat64
    # A floating-point with semantics hint attached.
    # Note: I know this is not much but better than just the number. ;)
    
    # Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
    string semantics
    # The actual value communicated.
    float64 value
    
    ================================================================================
    MSG: giskard_msgs/SemanticBool
    # A bool with semantics hint attached.
    # Note: I know this is not much but better than just the bool. ;)
    
    # Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
    string semantics
    # The actual value communicated.
    bool value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WholeBodyState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.running_time !== undefined) {
      resolved.running_time = msg.running_time;
    }
    else {
      resolved.running_time = {secs: 0, nsecs: 0}
    }

    if (msg.left_arm_max_vel !== undefined) {
      resolved.left_arm_max_vel = msg.left_arm_max_vel;
    }
    else {
      resolved.left_arm_max_vel = 0.0
    }

    if (msg.right_arm_max_vel !== undefined) {
      resolved.right_arm_max_vel = msg.right_arm_max_vel;
    }
    else {
      resolved.right_arm_max_vel = 0.0
    }

    if (msg.torso_vel !== undefined) {
      resolved.torso_vel = msg.torso_vel;
    }
    else {
      resolved.torso_vel = 0.0
    }

    if (msg.convergence_values !== undefined) {
      resolved.convergence_values = new Array(msg.convergence_values.length);
      for (let i = 0; i < resolved.convergence_values.length; ++i) {
        resolved.convergence_values[i] = SemanticFloat64.Resolve(msg.convergence_values[i]);
      }
    }
    else {
      resolved.convergence_values = []
    }

    if (msg.motion_started !== undefined) {
      resolved.motion_started = msg.motion_started;
    }
    else {
      resolved.motion_started = false
    }

    if (msg.motion_old !== undefined) {
      resolved.motion_old = msg.motion_old;
    }
    else {
      resolved.motion_old = false
    }

    if (msg.torso_moving !== undefined) {
      resolved.torso_moving = msg.torso_moving;
    }
    else {
      resolved.torso_moving = false
    }

    if (msg.left_arm_moving !== undefined) {
      resolved.left_arm_moving = msg.left_arm_moving;
    }
    else {
      resolved.left_arm_moving = false
    }

    if (msg.right_arm_moving !== undefined) {
      resolved.right_arm_moving = msg.right_arm_moving;
    }
    else {
      resolved.right_arm_moving = false
    }

    if (msg.convergence_flags !== undefined) {
      resolved.convergence_flags = new Array(msg.convergence_flags.length);
      for (let i = 0; i < resolved.convergence_flags.length; ++i) {
        resolved.convergence_flags[i] = SemanticBool.Resolve(msg.convergence_flags[i]);
      }
    }
    else {
      resolved.convergence_flags = []
    }

    return resolved;
    }
};

module.exports = WholeBodyState;
