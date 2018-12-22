// Auto-generated. Do not edit!

// (in-package giskard_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ArmCommand = require('./ArmCommand.js');
let SemanticFloat64 = require('./SemanticFloat64.js');

//-----------------------------------------------------------

class WholeBodyCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.right_ee = null;
      this.left_ee = null;
      this.yaml_spec = null;
      this.convergence_thresholds = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('right_ee')) {
        this.right_ee = initObj.right_ee
      }
      else {
        this.right_ee = new ArmCommand();
      }
      if (initObj.hasOwnProperty('left_ee')) {
        this.left_ee = initObj.left_ee
      }
      else {
        this.left_ee = new ArmCommand();
      }
      if (initObj.hasOwnProperty('yaml_spec')) {
        this.yaml_spec = initObj.yaml_spec
      }
      else {
        this.yaml_spec = '';
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
    // Serializes a message object of type WholeBodyCommand
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [right_ee]
    bufferOffset = ArmCommand.serialize(obj.right_ee, buffer, bufferOffset);
    // Serialize message field [left_ee]
    bufferOffset = ArmCommand.serialize(obj.left_ee, buffer, bufferOffset);
    // Serialize message field [yaml_spec]
    bufferOffset = _serializer.string(obj.yaml_spec, buffer, bufferOffset);
    // Serialize message field [convergence_thresholds]
    // Serialize the length for message field [convergence_thresholds]
    bufferOffset = _serializer.uint32(obj.convergence_thresholds.length, buffer, bufferOffset);
    obj.convergence_thresholds.forEach((val) => {
      bufferOffset = SemanticFloat64.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WholeBodyCommand
    let len;
    let data = new WholeBodyCommand(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [right_ee]
    data.right_ee = ArmCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_ee]
    data.left_ee = ArmCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaml_spec]
    data.yaml_spec = _deserializer.string(buffer, bufferOffset);
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
    length += ArmCommand.getMessageSize(object.right_ee);
    length += ArmCommand.getMessageSize(object.left_ee);
    length += object.yaml_spec.length;
    object.convergence_thresholds.forEach((val) => {
      length += SemanticFloat64.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/WholeBodyCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '097f13fb94c4a201b4330a8facff3abe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A whole-body command message for a mobile manipulator with a morphology 
    # compatible with the PR2 robot. The message was designed to support alternative
    # ways of specifying a command.
    
    # definitions of possible values to use as type
    uint8 STANDARD_CONTROLLER=0
    uint8 YAML_CONTROLLER=1
    
    # use of the above constants to indicate the type of command
    uint8 type
    
    # standard controllers
    giskard_msgs/ArmCommand right_ee # command for right arm
    giskard_msgs/ArmCommand left_ee # command for left arm
    
    # yaml controllers
    string yaml_spec # complete specification of controller
    giskard_msgs/SemanticFloat64[] convergence_thresholds # thresholds used to decide convergence of motion
    
    ================================================================================
    MSG: giskard_msgs/ArmCommand
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
    const resolved = new WholeBodyCommand(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.right_ee !== undefined) {
      resolved.right_ee = ArmCommand.Resolve(msg.right_ee)
    }
    else {
      resolved.right_ee = new ArmCommand()
    }

    if (msg.left_ee !== undefined) {
      resolved.left_ee = ArmCommand.Resolve(msg.left_ee)
    }
    else {
      resolved.left_ee = new ArmCommand()
    }

    if (msg.yaml_spec !== undefined) {
      resolved.yaml_spec = msg.yaml_spec;
    }
    else {
      resolved.yaml_spec = ''
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
WholeBodyCommand.Constants = {
  STANDARD_CONTROLLER: 0,
  YAML_CONTROLLER: 1,
}

module.exports = WholeBodyCommand;
