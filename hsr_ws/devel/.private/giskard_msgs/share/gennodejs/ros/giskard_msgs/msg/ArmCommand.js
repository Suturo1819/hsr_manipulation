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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ArmCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.goal_pose = null;
      this.goal_configuration = null;
      this.convergence_thresholds = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('goal_pose')) {
        this.goal_pose = initObj.goal_pose
      }
      else {
        this.goal_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('goal_configuration')) {
        this.goal_configuration = initObj.goal_configuration
      }
      else {
        this.goal_configuration = [];
      }
      if (initObj.hasOwnProperty('convergence_thresholds')) {
        this.convergence_thresholds = initObj.convergence_thresholds
      }
      else {
        this.convergence_thresholds = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmCommand
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [goal_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.goal_pose, buffer, bufferOffset);
    // Serialize message field [goal_configuration]
    bufferOffset = _arraySerializer.float64(obj.goal_configuration, buffer, bufferOffset, null);
    // Serialize message field [convergence_thresholds]
    // Serialize the length for message field [convergence_thresholds]
    bufferOffset = _serializer.uint32(obj.convergence_thresholds.length, buffer, bufferOffset);
    obj.convergence_thresholds.forEach((val) => {
      bufferOffset = SemanticFloat64.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmCommand
    let len;
    let data = new ArmCommand(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [goal_pose]
    data.goal_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_configuration]
    data.goal_configuration = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [convergence_thresholds]
    // Deserialize array length for message field [convergence_thresholds]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.convergence_thresholds = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.convergence_thresholds[i] = SemanticFloat64.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.goal_pose);
    length += 8 * object.goal_configuration.length;
    object.convergence_thresholds.forEach((val) => {
      length += SemanticFloat64.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/ArmCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41a9ac8c4e1e8072ebaff33076861080';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A command message for robotic manipulators that exposes a couple
    # of alternative ways of specifying commands.
    
    # Definitions of possible values used for type
    uint8 IGNORE_GOAL=0 # Ignore the rest of this command.
    uint8 CARTESIAN_GOAL=1 # Use the PoseStamped.
    uint8 JOINT_GOAL=2 # Use the list of floats.
    
    # use one of the above constants to indicate the type of command
    uint8 type
    
    # Cartesian goal for the arm.
    # Note: The header will be used to resolve goal using tf.
    geometry_msgs/PoseStamped goal_pose
    
    # Joint goal for the arm.
    float64[] goal_configuration
    
    # List of internal double expressions with thresholds to decide convergence
    giskard_msgs/SemanticFloat64[] convergence_thresholds
    
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
    
    ================================================================================
    MSG: giskard_msgs/SemanticFloat64
    # A floating-point with semantics hint attached.
    # Note: I know this is not much but better than just the number. ;)
    
    # Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
    string semantics
    # The actual value communicated.
    float64 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmCommand(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.goal_pose !== undefined) {
      resolved.goal_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.goal_pose)
    }
    else {
      resolved.goal_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.goal_configuration !== undefined) {
      resolved.goal_configuration = msg.goal_configuration;
    }
    else {
      resolved.goal_configuration = []
    }

    if (msg.convergence_thresholds !== undefined) {
      resolved.convergence_thresholds = new Array(msg.convergence_thresholds.length);
      for (let i = 0; i < resolved.convergence_thresholds.length; ++i) {
        resolved.convergence_thresholds[i] = SemanticFloat64.Resolve(msg.convergence_thresholds[i]);
      }
    }
    else {
      resolved.convergence_thresholds = []
    }

    return resolved;
    }
};

// Constants for message
ArmCommand.Constants = {
  IGNORE_GOAL: 0,
  CARTESIAN_GOAL: 1,
  JOINT_GOAL: 2,
}

module.exports = ArmCommand;
