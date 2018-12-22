// Auto-generated. Do not edit!

// (in-package giskard_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WorldBody = require('../msg/WorldBody.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class UpdateWorldRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.operation = null;
      this.body = null;
      this.rigidly_attached = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('operation')) {
        this.operation = initObj.operation
      }
      else {
        this.operation = 0;
      }
      if (initObj.hasOwnProperty('body')) {
        this.body = initObj.body
      }
      else {
        this.body = new WorldBody();
      }
      if (initObj.hasOwnProperty('rigidly_attached')) {
        this.rigidly_attached = initObj.rigidly_attached
      }
      else {
        this.rigidly_attached = false;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateWorldRequest
    // Serialize message field [operation]
    bufferOffset = _serializer.uint8(obj.operation, buffer, bufferOffset);
    // Serialize message field [body]
    bufferOffset = WorldBody.serialize(obj.body, buffer, bufferOffset);
    // Serialize message field [rigidly_attached]
    bufferOffset = _serializer.bool(obj.rigidly_attached, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateWorldRequest
    let len;
    let data = new UpdateWorldRequest(null);
    // Deserialize message field [operation]
    data.operation = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [body]
    data.body = WorldBody.deserialize(buffer, bufferOffset);
    // Deserialize message field [rigidly_attached]
    data.rigidly_attached = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WorldBody.getMessageSize(object.body);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'giskard_msgs/UpdateWorldRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec018c3a5a71401451cb4df98ca2f18a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    uint8 UNDEFINED=0
    
    
    
    uint8 ADD=1
    
    
    
    uint8 REMOVE=2
    
    
    
    uint8 ALTER=3
    
    
    
    uint8 REMOVE_ALL=4
    
    
    uint8 operation
    
    
    giskard_msgs/WorldBody body
    
    
    
    bool rigidly_attached
    
    
    
    
    geometry_msgs/PoseStamped pose
    
    ================================================================================
    MSG: giskard_msgs/WorldBody
    # Representation of a single body into the world 
    
    # Possible constants to fill into the type field
    uint8 UNDEFINED=0
    uint8 PRIMITIVE_BODY=1
    uint8 MESH_BODY=2
    uint8 URDF_BODY=3
    
    # The type of body that is represented
    uint8 type
    
    # The name with which the body shall be addressed in the world
    # Note: needs to be unique. If the name is already taken, an error will be returned
    string name
    
    # Only used if type==PRIMITIVE_BODY, otherwise ignored.
    shape_msgs/SolidPrimitive shape
    
    # Only used if type==MESH_BODY, otherwise ignored. 
    # Needs to be a ROS resource description, like:
    # 'package://my_pkg/meshes/some_mesh.dae'
    string mesh
    
    # Only used if type==URDF_BODY, otherwise ignored.
    # Needs to comply with the URDF definition from here:
    # http://wiki.ros.org/urdf/XML
    string urdf
    # Only used if type==URDF_BODY, otherwise ignored.
    # Optional, can be left empty.
    # If not empty, this will interpreted as a ROS topic over which 
    # message of type sensor_msgs/JointState are communicated that
    # contain the current state of all the movable joints described
    # in the urdf.
    string joint_state_topic
    
    ================================================================================
    MSG: shape_msgs/SolidPrimitive
    # Define box, sphere, cylinder, cone 
    # All shapes are defined to have their bounding boxes centered around 0,0,0.
    
    uint8 BOX=1
    uint8 SPHERE=2
    uint8 CYLINDER=3
    uint8 CONE=4
    
    # The type of the shape
    uint8 type
    
    
    # The dimensions of the shape
    float64[] dimensions
    
    # The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array
    
    # For the BOX type, the X, Y, and Z dimensions are the length of the corresponding
    # sides of the box.
    uint8 BOX_X=0
    uint8 BOX_Y=1
    uint8 BOX_Z=2
    
    
    # For the SPHERE type, only one component is used, and it gives the radius of
    # the sphere.
    uint8 SPHERE_RADIUS=0
    
    
    # For the CYLINDER and CONE types, the center line is oriented along
    # the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component
    # of dimensions gives the height of the cylinder (cone).  The
    # CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the
    # radius of the base of the cylinder (cone).  Cone and cylinder
    # primitives are defined to be circular. The tip of the cone is
    # pointing up, along +Z axis.
    
    uint8 CYLINDER_HEIGHT=0
    uint8 CYLINDER_RADIUS=1
    
    uint8 CONE_HEIGHT=0
    uint8 CONE_RADIUS=1
    
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
    const resolved = new UpdateWorldRequest(null);
    if (msg.operation !== undefined) {
      resolved.operation = msg.operation;
    }
    else {
      resolved.operation = 0
    }

    if (msg.body !== undefined) {
      resolved.body = WorldBody.Resolve(msg.body)
    }
    else {
      resolved.body = new WorldBody()
    }

    if (msg.rigidly_attached !== undefined) {
      resolved.rigidly_attached = msg.rigidly_attached;
    }
    else {
      resolved.rigidly_attached = false
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

// Constants for message
UpdateWorldRequest.Constants = {
  UNDEFINED: 0,
  ADD: 1,
  REMOVE: 2,
  ALTER: 3,
  REMOVE_ALL: 4,
}

class UpdateWorldResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error_codes = null;
      this.error_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('error_codes')) {
        this.error_codes = initObj.error_codes
      }
      else {
        this.error_codes = 0;
      }
      if (initObj.hasOwnProperty('error_msg')) {
        this.error_msg = initObj.error_msg
      }
      else {
        this.error_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateWorldResponse
    // Serialize message field [error_codes]
    bufferOffset = _serializer.uint8(obj.error_codes, buffer, bufferOffset);
    // Serialize message field [error_msg]
    bufferOffset = _serializer.string(obj.error_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateWorldResponse
    let len;
    let data = new UpdateWorldResponse(null);
    // Deserialize message field [error_codes]
    data.error_codes = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_msg]
    data.error_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_msg.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'giskard_msgs/UpdateWorldResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67d5bb7a907694dba035c5fe9db7da83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    uint8 SUCCESS=0
    uint8 MISSING_BODY_ERROR=1
    uint8 DUPLICATE_BODY_ERROR=2
    uint8 CORRUPT_SHAPE_ERROR=3
    uint8 CORRUPT_MESH_ERROR=4
    uint8 CORRUPT_URDF_ERROR=5
    uint8 TF_ERROR=6
    uint8 MISSING_LINK_ERROR=7
    uint8 INVALID_OPERATION=8
    uint8 UNSUPPORTED_OPTIONS=9
    
    
    uint8 error_codes
    
    
    string error_msg
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateWorldResponse(null);
    if (msg.error_codes !== undefined) {
      resolved.error_codes = msg.error_codes;
    }
    else {
      resolved.error_codes = 0
    }

    if (msg.error_msg !== undefined) {
      resolved.error_msg = msg.error_msg;
    }
    else {
      resolved.error_msg = ''
    }

    return resolved;
    }
};

// Constants for message
UpdateWorldResponse.Constants = {
  SUCCESS: 0,
  MISSING_BODY_ERROR: 1,
  DUPLICATE_BODY_ERROR: 2,
  CORRUPT_SHAPE_ERROR: 3,
  CORRUPT_MESH_ERROR: 4,
  CORRUPT_URDF_ERROR: 5,
  TF_ERROR: 6,
  MISSING_LINK_ERROR: 7,
  INVALID_OPERATION: 8,
  UNSUPPORTED_OPTIONS: 9,
}

module.exports = {
  Request: UpdateWorldRequest,
  Response: UpdateWorldResponse,
  md5sum() { return '9af3706c2feee114c99767eb9c5ebb7f'; },
  datatype() { return 'giskard_msgs/UpdateWorld'; }
};
