// Auto-generated. Do not edit!

// (in-package giskard_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Controller {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.root_link = null;
      this.tip_link = null;
      this.p_gain = null;
      this.weight = null;
      this.max_speed = null;
      this.goal_pose = null;
      this.goal_state = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('root_link')) {
        this.root_link = initObj.root_link
      }
      else {
        this.root_link = '';
      }
      if (initObj.hasOwnProperty('tip_link')) {
        this.tip_link = initObj.tip_link
      }
      else {
        this.tip_link = '';
      }
      if (initObj.hasOwnProperty('p_gain')) {
        this.p_gain = initObj.p_gain
      }
      else {
        this.p_gain = 0.0;
      }
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0.0;
      }
      if (initObj.hasOwnProperty('max_speed')) {
        this.max_speed = initObj.max_speed
      }
      else {
        this.max_speed = 0.0;
      }
      if (initObj.hasOwnProperty('goal_pose')) {
        this.goal_pose = initObj.goal_pose
      }
      else {
        this.goal_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('goal_state')) {
        this.goal_state = initObj.goal_state
      }
      else {
        this.goal_state = new sensor_msgs.msg.JointState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Controller
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [root_link]
    bufferOffset = _serializer.string(obj.root_link, buffer, bufferOffset);
    // Serialize message field [tip_link]
    bufferOffset = _serializer.string(obj.tip_link, buffer, bufferOffset);
    // Serialize message field [p_gain]
    bufferOffset = _serializer.float64(obj.p_gain, buffer, bufferOffset);
    // Serialize message field [weight]
    bufferOffset = _serializer.float64(obj.weight, buffer, bufferOffset);
    // Serialize message field [max_speed]
    bufferOffset = _serializer.float64(obj.max_speed, buffer, bufferOffset);
    // Serialize message field [goal_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.goal_pose, buffer, bufferOffset);
    // Serialize message field [goal_state]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.goal_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Controller
    let len;
    let data = new Controller(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [root_link]
    data.root_link = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tip_link]
    data.tip_link = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [p_gain]
    data.p_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [weight]
    data.weight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_speed]
    data.max_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [goal_pose]
    data.goal_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_state]
    data.goal_state = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.root_link.length;
    length += object.tip_link.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.goal_pose);
    length += sensor_msgs.msg.JointState.getMessageSize(object.goal_state);
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/Controller';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '642b5e2147410b76bd7b4f445ffc67f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # definitions of possible values to use as type
    uint8 UNDEFINED=0
    uint8 JOINT=1
    uint8 TRANSLATION_3D=2
    uint8 ROTATION_3D=3
    
    # use of the above constants to indicate the type of controller
    uint8 type
    
    # Name of the link that is at the start of the controlled kinematic chain
    string root_link
    
    # Name of the link that is at the end of the controlled kinematic chain
    string tip_link 
    
    # Proportional gain used by the controller
    float64 p_gain
    
    # Weight assigned to the controller within the cost-function solved in each cycle
    float64 weight
    
    # Maximum speed
    # m/s if type==TRANSLATION_3D
    # rad/s if type==ROTATION_3D
    # min(max_speed, joint_velocity_limit_specified_in_urdf) if type==JOINT
    float64 max_speed
    
    # controller goal, interpretation depends on value in type field
    # JOINT: ignores this field
    # TRANSLATION_3D: desired translation of tip_link relative to root_link
    # ROTATION_3D: desired orientation of tip_link relative to root_link
    geometry_msgs/PoseStamped goal_pose
    
    # controller goal, interpretation depends on value in type field
    # JOINT: reads the position values for all joints in the kinematic chain between root_link and tip_link
    # TRANSLATION_3D: ignores this field
    # ROTATION_3D: ignores this field
    sensor_msgs/JointState goal_state
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Controller(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.root_link !== undefined) {
      resolved.root_link = msg.root_link;
    }
    else {
      resolved.root_link = ''
    }

    if (msg.tip_link !== undefined) {
      resolved.tip_link = msg.tip_link;
    }
    else {
      resolved.tip_link = ''
    }

    if (msg.p_gain !== undefined) {
      resolved.p_gain = msg.p_gain;
    }
    else {
      resolved.p_gain = 0.0
    }

    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0.0
    }

    if (msg.max_speed !== undefined) {
      resolved.max_speed = msg.max_speed;
    }
    else {
      resolved.max_speed = 0.0
    }

    if (msg.goal_pose !== undefined) {
      resolved.goal_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.goal_pose)
    }
    else {
      resolved.goal_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.goal_state !== undefined) {
      resolved.goal_state = sensor_msgs.msg.JointState.Resolve(msg.goal_state)
    }
    else {
      resolved.goal_state = new sensor_msgs.msg.JointState()
    }

    return resolved;
    }
};

// Constants for message
Controller.Constants = {
  UNDEFINED: 0,
  JOINT: 1,
  TRANSLATION_3D: 2,
  ROTATION_3D: 3,
}

module.exports = Controller;
