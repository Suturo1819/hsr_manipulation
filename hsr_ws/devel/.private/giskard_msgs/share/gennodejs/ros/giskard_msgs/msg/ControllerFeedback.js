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
let SemanticVector3 = require('./SemanticVector3.js');
let WholeBodyCommand = require('./WholeBodyCommand.js');
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ControllerFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.watchdog_active = null;
      this.commands = null;
      this.slacks = null;
      this.convergence_features = null;
      this.doubles = null;
      this.vectors = null;
      this.current_command = null;
      this.current_command_hash = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('watchdog_active')) {
        this.watchdog_active = initObj.watchdog_active
      }
      else {
        this.watchdog_active = false;
      }
      if (initObj.hasOwnProperty('commands')) {
        this.commands = initObj.commands
      }
      else {
        this.commands = new sensor_msgs.msg.JointState();
      }
      if (initObj.hasOwnProperty('slacks')) {
        this.slacks = initObj.slacks
      }
      else {
        this.slacks = [];
      }
      if (initObj.hasOwnProperty('convergence_features')) {
        this.convergence_features = initObj.convergence_features
      }
      else {
        this.convergence_features = [];
      }
      if (initObj.hasOwnProperty('doubles')) {
        this.doubles = initObj.doubles
      }
      else {
        this.doubles = [];
      }
      if (initObj.hasOwnProperty('vectors')) {
        this.vectors = initObj.vectors
      }
      else {
        this.vectors = [];
      }
      if (initObj.hasOwnProperty('current_command')) {
        this.current_command = initObj.current_command
      }
      else {
        this.current_command = new WholeBodyCommand();
      }
      if (initObj.hasOwnProperty('current_command_hash')) {
        this.current_command_hash = initObj.current_command_hash
      }
      else {
        this.current_command_hash = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerFeedback
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [watchdog_active]
    bufferOffset = _serializer.bool(obj.watchdog_active, buffer, bufferOffset);
    // Serialize message field [commands]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.commands, buffer, bufferOffset);
    // Serialize message field [slacks]
    // Serialize the length for message field [slacks]
    bufferOffset = _serializer.uint32(obj.slacks.length, buffer, bufferOffset);
    obj.slacks.forEach((val) => {
      bufferOffset = SemanticFloat64.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [convergence_features]
    // Serialize the length for message field [convergence_features]
    bufferOffset = _serializer.uint32(obj.convergence_features.length, buffer, bufferOffset);
    obj.convergence_features.forEach((val) => {
      bufferOffset = SemanticFloat64.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [doubles]
    // Serialize the length for message field [doubles]
    bufferOffset = _serializer.uint32(obj.doubles.length, buffer, bufferOffset);
    obj.doubles.forEach((val) => {
      bufferOffset = SemanticFloat64.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [vectors]
    // Serialize the length for message field [vectors]
    bufferOffset = _serializer.uint32(obj.vectors.length, buffer, bufferOffset);
    obj.vectors.forEach((val) => {
      bufferOffset = SemanticVector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [current_command]
    bufferOffset = WholeBodyCommand.serialize(obj.current_command, buffer, bufferOffset);
    // Serialize message field [current_command_hash]
    bufferOffset = _serializer.uint64(obj.current_command_hash, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerFeedback
    let len;
    let data = new ControllerFeedback(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [watchdog_active]
    data.watchdog_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [commands]
    data.commands = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [slacks]
    // Deserialize array length for message field [slacks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.slacks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.slacks[i] = SemanticFloat64.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [convergence_features]
    // Deserialize array length for message field [convergence_features]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.convergence_features = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.convergence_features[i] = SemanticFloat64.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [doubles]
    // Deserialize array length for message field [doubles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.doubles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.doubles[i] = SemanticFloat64.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [vectors]
    // Deserialize array length for message field [vectors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vectors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vectors[i] = SemanticVector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [current_command]
    data.current_command = WholeBodyCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_command_hash]
    data.current_command_hash = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += sensor_msgs.msg.JointState.getMessageSize(object.commands);
    object.slacks.forEach((val) => {
      length += SemanticFloat64.getMessageSize(val);
    });
    object.convergence_features.forEach((val) => {
      length += SemanticFloat64.getMessageSize(val);
    });
    object.doubles.forEach((val) => {
      length += SemanticFloat64.getMessageSize(val);
    });
    object.vectors.forEach((val) => {
      length += SemanticVector3.getMessageSize(val);
    });
    length += WholeBodyCommand.getMessageSize(object.current_command);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/ControllerFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6aebd1d0d24e8782cff521a077935cd4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Feedback provided by giskard controllers.
    
    # Header to communicate timestamps, and being compatible with message-filters.
    std_msgs/Header header
    # Flag to indicate whether the watchdog is active
    bool watchdog_active
    # Commands issued to motor controllers, expressed with semantics hints.
    sensor_msgs/JointState commands
    # Slack values of task functions, expressed with semantics hints.
    giskard_msgs/SemanticFloat64[] slacks
    # Internal double expressions used to decide convergence
    giskard_msgs/SemanticFloat64[] convergence_features
    # Internal double expressions wired through for debugging
    giskard_msgs/SemanticFloat64[] doubles
    # Internal vector expressions wired through for debugging
    giskard_msgs/SemanticVector3[] vectors
    
    # Command that the controller is currently pursuing
    giskard_msgs/WholeBodyCommand current_command
    # Hash of the current command calculated by the controller
    uint64 current_command_hash
    
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
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
    ================================================================================
    MSG: giskard_msgs/SemanticFloat64
    # A floating-point with semantics hint attached.
    # Note: I know this is not much but better than just the number. ;)
    
    # Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
    string semantics
    # The actual value communicated.
    float64 value
    
    ================================================================================
    MSG: giskard_msgs/SemanticVector3
    # A 3d vector with semantics hint attached.
    # Note: I know this is not much but better than just the number. ;)
    
    # Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
    string semantics
    # The actual value communicated.
    geometry_msgs/Vector3 value
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
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
    const resolved = new ControllerFeedback(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.watchdog_active !== undefined) {
      resolved.watchdog_active = msg.watchdog_active;
    }
    else {
      resolved.watchdog_active = false
    }

    if (msg.commands !== undefined) {
      resolved.commands = sensor_msgs.msg.JointState.Resolve(msg.commands)
    }
    else {
      resolved.commands = new sensor_msgs.msg.JointState()
    }

    if (msg.slacks !== undefined) {
      resolved.slacks = new Array(msg.slacks.length);
      for (let i = 0; i < resolved.slacks.length; ++i) {
        resolved.slacks[i] = SemanticFloat64.Resolve(msg.slacks[i]);
      }
    }
    else {
      resolved.slacks = []
    }

    if (msg.convergence_features !== undefined) {
      resolved.convergence_features = new Array(msg.convergence_features.length);
      for (let i = 0; i < resolved.convergence_features.length; ++i) {
        resolved.convergence_features[i] = SemanticFloat64.Resolve(msg.convergence_features[i]);
      }
    }
    else {
      resolved.convergence_features = []
    }

    if (msg.doubles !== undefined) {
      resolved.doubles = new Array(msg.doubles.length);
      for (let i = 0; i < resolved.doubles.length; ++i) {
        resolved.doubles[i] = SemanticFloat64.Resolve(msg.doubles[i]);
      }
    }
    else {
      resolved.doubles = []
    }

    if (msg.vectors !== undefined) {
      resolved.vectors = new Array(msg.vectors.length);
      for (let i = 0; i < resolved.vectors.length; ++i) {
        resolved.vectors[i] = SemanticVector3.Resolve(msg.vectors[i]);
      }
    }
    else {
      resolved.vectors = []
    }

    if (msg.current_command !== undefined) {
      resolved.current_command = WholeBodyCommand.Resolve(msg.current_command)
    }
    else {
      resolved.current_command = new WholeBodyCommand()
    }

    if (msg.current_command_hash !== undefined) {
      resolved.current_command_hash = msg.current_command_hash;
    }
    else {
      resolved.current_command_hash = 0
    }

    return resolved;
    }
};

module.exports = ControllerFeedback;
