// Auto-generated. Do not edit!

// (in-package giskard_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WholeBodyCommand = require('./WholeBodyCommand.js');

//-----------------------------------------------------------

class WholeBodyGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new WholeBodyCommand();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WholeBodyGoal
    // Serialize message field [command]
    bufferOffset = WholeBodyCommand.serialize(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WholeBodyGoal
    let len;
    let data = new WholeBodyGoal(null);
    // Deserialize message field [command]
    data.command = WholeBodyCommand.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WholeBodyCommand.getMessageSize(object.command);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/WholeBodyGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b97f32e56852874fece424a12234894';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # goal
    giskard_msgs/WholeBodyCommand command
    
    ================================================================================
    MSG: giskard_msgs/WholeBodyCommand
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
    const resolved = new WholeBodyGoal(null);
    if (msg.command !== undefined) {
      resolved.command = WholeBodyCommand.Resolve(msg.command)
    }
    else {
      resolved.command = new WholeBodyCommand()
    }

    return resolved;
    }
};

module.exports = WholeBodyGoal;