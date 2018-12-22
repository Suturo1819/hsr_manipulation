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

class Constraint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.lower = null;
      this.upper = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('lower')) {
        this.lower = initObj.lower
      }
      else {
        this.lower = 0.0;
      }
      if (initObj.hasOwnProperty('upper')) {
        this.upper = initObj.upper
      }
      else {
        this.upper = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Constraint
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [lower]
    bufferOffset = _serializer.float64(obj.lower, buffer, bufferOffset);
    // Serialize message field [upper]
    bufferOffset = _serializer.float64(obj.upper, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Constraint
    let len;
    let data = new Constraint(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lower]
    data.lower = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [upper]
    data.upper = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/Constraint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b108bdb410bd66d771fb782664678118';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # a string identifying the expression behind the constraint
    string name
    
    # desired lower and upper boundaries that shall be enforced
    float64 lower
    float64 upper
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Constraint(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.lower !== undefined) {
      resolved.lower = msg.lower;
    }
    else {
      resolved.lower = 0.0
    }

    if (msg.upper !== undefined) {
      resolved.upper = msg.upper;
    }
    else {
      resolved.upper = 0.0
    }

    return resolved;
    }
};

module.exports = Constraint;
