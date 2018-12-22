// Auto-generated. Do not edit!

// (in-package iai_naive_kinematics_sim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ProjectionClock {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.now = null;
      this.period = null;
    }
    else {
      if (initObj.hasOwnProperty('now')) {
        this.now = initObj.now
      }
      else {
        this.now = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('period')) {
        this.period = initObj.period
      }
      else {
        this.period = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProjectionClock
    // Serialize message field [now]
    bufferOffset = _serializer.time(obj.now, buffer, bufferOffset);
    // Serialize message field [period]
    bufferOffset = _serializer.duration(obj.period, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProjectionClock
    let len;
    let data = new ProjectionClock(null);
    // Deserialize message field [now]
    data.now = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [period]
    data.period = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iai_naive_kinematics_sim/ProjectionClock';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '118d0ba873954aeb07014f682079aa06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ProjectionClock messages are used to synchronously advance the clock
    # of a set of nodes that provide distributed projection capabilities.
    # The original intention was to have it published by a central projection
    # management node that acts as a sort of pace-maker for the projection.
    
    time now         # time equivalent to ros::Time::now(), used to stamp data
    duration period  # duration between clock signals, used to advance projections
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProjectionClock(null);
    if (msg.now !== undefined) {
      resolved.now = msg.now;
    }
    else {
      resolved.now = {secs: 0, nsecs: 0}
    }

    if (msg.period !== undefined) {
      resolved.period = msg.period;
    }
    else {
      resolved.period = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = ProjectionClock;
