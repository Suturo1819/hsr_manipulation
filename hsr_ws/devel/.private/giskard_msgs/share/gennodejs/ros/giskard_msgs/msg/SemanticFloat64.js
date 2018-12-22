// Auto-generated. Do not edit!

// (in-package giskard_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SemanticFloat64 {
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
        this.value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SemanticFloat64
    // Serialize message field [semantics]
    bufferOffset = _serializer.string(obj.semantics, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.float64(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SemanticFloat64
    let len;
    let data = new SemanticFloat64(null);
    // Deserialize message field [semantics]
    data.semantics = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.semantics.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/SemanticFloat64';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4a58ae766646c1b94adf962a4b9641b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SemanticFloat64(null);
    if (msg.semantics !== undefined) {
      resolved.semantics = msg.semantics;
    }
    else {
      resolved.semantics = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0.0
    }

    return resolved;
    }
};

module.exports = SemanticFloat64;
