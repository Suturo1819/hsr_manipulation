// Auto-generated. Do not edit!

// (in-package giskard_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let shape_msgs = _finder('shape_msgs');

//-----------------------------------------------------------

class WorldBody {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.name = null;
      this.shape = null;
      this.mesh = null;
      this.urdf = null;
      this.joint_state_topic = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = new shape_msgs.msg.SolidPrimitive();
      }
      if (initObj.hasOwnProperty('mesh')) {
        this.mesh = initObj.mesh
      }
      else {
        this.mesh = '';
      }
      if (initObj.hasOwnProperty('urdf')) {
        this.urdf = initObj.urdf
      }
      else {
        this.urdf = '';
      }
      if (initObj.hasOwnProperty('joint_state_topic')) {
        this.joint_state_topic = initObj.joint_state_topic
      }
      else {
        this.joint_state_topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WorldBody
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = shape_msgs.msg.SolidPrimitive.serialize(obj.shape, buffer, bufferOffset);
    // Serialize message field [mesh]
    bufferOffset = _serializer.string(obj.mesh, buffer, bufferOffset);
    // Serialize message field [urdf]
    bufferOffset = _serializer.string(obj.urdf, buffer, bufferOffset);
    // Serialize message field [joint_state_topic]
    bufferOffset = _serializer.string(obj.joint_state_topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WorldBody
    let len;
    let data = new WorldBody(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = shape_msgs.msg.SolidPrimitive.deserialize(buffer, bufferOffset);
    // Deserialize message field [mesh]
    data.mesh = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [urdf]
    data.urdf = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint_state_topic]
    data.joint_state_topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += shape_msgs.msg.SolidPrimitive.getMessageSize(object.shape);
    length += object.mesh.length;
    length += object.urdf.length;
    length += object.joint_state_topic.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/WorldBody';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f763aeaaddb71192fb2371cfede6d783';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WorldBody(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.shape !== undefined) {
      resolved.shape = shape_msgs.msg.SolidPrimitive.Resolve(msg.shape)
    }
    else {
      resolved.shape = new shape_msgs.msg.SolidPrimitive()
    }

    if (msg.mesh !== undefined) {
      resolved.mesh = msg.mesh;
    }
    else {
      resolved.mesh = ''
    }

    if (msg.urdf !== undefined) {
      resolved.urdf = msg.urdf;
    }
    else {
      resolved.urdf = ''
    }

    if (msg.joint_state_topic !== undefined) {
      resolved.joint_state_topic = msg.joint_state_topic;
    }
    else {
      resolved.joint_state_topic = ''
    }

    return resolved;
    }
};

// Constants for message
WorldBody.Constants = {
  UNDEFINED: 0,
  PRIMITIVE_BODY: 1,
  MESH_BODY: 2,
  URDF_BODY: 3,
}

module.exports = WorldBody;
