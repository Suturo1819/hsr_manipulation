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

class SemanticVector3 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.semantics = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('semantics')) {
        this.semantics = initObj.semantics
      }
      else {
        this.semantics = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SemanticVector3
    // Serialize message field [semantics]
    bufferOffset = _serializer.string(obj.semantics, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SemanticVector3
    let len;
    let data = new SemanticVector3(null);
    // Deserialize message field [semantics]
    data.semantics = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.semantics.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/SemanticVector3';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c66c67f1caae2f292daae03f1eb49dc2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SemanticVector3(null);
    if (msg.semantics !== undefined) {
      resolved.semantics = msg.semantics;
    }
    else {
      resolved.semantics = ''
    }

    if (msg.value !== undefined) {
      resolved.value = geometry_msgs.msg.Vector3.Resolve(msg.value)
    }
    else {
      resolved.value = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = SemanticVector3;
