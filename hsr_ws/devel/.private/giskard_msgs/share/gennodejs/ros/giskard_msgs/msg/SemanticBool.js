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

class SemanticBool {
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
        this.value = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SemanticBool
    // Serialize message field [semantics]
    bufferOffset = _serializer.string(obj.semantics, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.bool(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SemanticBool
    let len;
    let data = new SemanticBool(null);
    // Deserialize message field [semantics]
    data.semantics = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.semantics.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/SemanticBool';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b2f92c216bbfd6638af0bfc9228a3e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SemanticBool(null);
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
      resolved.value = false
    }

    return resolved;
    }
};

module.exports = SemanticBool;
