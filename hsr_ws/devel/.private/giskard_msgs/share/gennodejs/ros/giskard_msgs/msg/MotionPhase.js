// Auto-generated. Do not edit!

// (in-package giskard_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Constraint = require('./Constraint.js');

//-----------------------------------------------------------

class MotionPhase {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.constraints = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('constraints')) {
        this.constraints = initObj.constraints
      }
      else {
        this.constraints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotionPhase
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [constraints]
    // Serialize the length for message field [constraints]
    bufferOffset = _serializer.uint32(obj.constraints.length, buffer, bufferOffset);
    obj.constraints.forEach((val) => {
      bufferOffset = Constraint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotionPhase
    let len;
    let data = new MotionPhase(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [constraints]
    // Deserialize array length for message field [constraints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.constraints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.constraints[i] = Constraint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    object.constraints.forEach((val) => {
      length += Constraint.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/MotionPhase';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0948cf625fccf5454fdbf95bfb4d2d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # definition of a task-specific motion phase
    
    # identifier of the motion phase
    string name
    
    # a list of constraints representing the motion goal
    giskard_msgs/Constraint[] constraints
    
    ================================================================================
    MSG: giskard_msgs/Constraint
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
    const resolved = new MotionPhase(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.constraints !== undefined) {
      resolved.constraints = new Array(msg.constraints.length);
      for (let i = 0; i < resolved.constraints.length; ++i) {
        resolved.constraints[i] = Constraint.Resolve(msg.constraints[i]);
      }
    }
    else {
      resolved.constraints = []
    }

    return resolved;
    }
};

module.exports = MotionPhase;
