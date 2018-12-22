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

class CollisionEntry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.min_dist = null;
      this.robot_links = null;
      this.body_b = null;
      this.link_bs = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('min_dist')) {
        this.min_dist = initObj.min_dist
      }
      else {
        this.min_dist = 0.0;
      }
      if (initObj.hasOwnProperty('robot_links')) {
        this.robot_links = initObj.robot_links
      }
      else {
        this.robot_links = [];
      }
      if (initObj.hasOwnProperty('body_b')) {
        this.body_b = initObj.body_b
      }
      else {
        this.body_b = '';
      }
      if (initObj.hasOwnProperty('link_bs')) {
        this.link_bs = initObj.link_bs
      }
      else {
        this.link_bs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CollisionEntry
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [min_dist]
    bufferOffset = _serializer.float64(obj.min_dist, buffer, bufferOffset);
    // Serialize message field [robot_links]
    bufferOffset = _arraySerializer.string(obj.robot_links, buffer, bufferOffset, null);
    // Serialize message field [body_b]
    bufferOffset = _serializer.string(obj.body_b, buffer, bufferOffset);
    // Serialize message field [link_bs]
    bufferOffset = _arraySerializer.string(obj.link_bs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CollisionEntry
    let len;
    let data = new CollisionEntry(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [min_dist]
    data.min_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [robot_links]
    data.robot_links = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [body_b]
    data.body_b = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [link_bs]
    data.link_bs = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.robot_links.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.body_b.length;
    object.link_bs.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'giskard_msgs/CollisionEntry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c58e7dbe61bb1840e7343233a9d145c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # definitions of possible collision types to use for value
    uint8 AVOID_COLLISION=0
    uint8 ALLOW_COLLISION=1
    uint8 AVOID_ALL_COLLISIONS=2
    uint8 ALLOW_ALL_COLLISIONS=3
    
    # use one of the above constants as collision type
    uint8 type
    
    # enforced minimum distance between the closest points on both surfaces
    float64 min_dist
    
    # link of the controlled robot, if left empty all links will be selected
    string[] robot_links
    
    # name of body B, i.e. the second body in the described collision, can also be the controlled robot
    string body_b
    # optional: link of the particular link on body B
    ## note: only works if body B is a multibody with a link with that name
    # note: if left empty, the entire body B is selected
    string[] link_bs
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CollisionEntry(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.min_dist !== undefined) {
      resolved.min_dist = msg.min_dist;
    }
    else {
      resolved.min_dist = 0.0
    }

    if (msg.robot_links !== undefined) {
      resolved.robot_links = msg.robot_links;
    }
    else {
      resolved.robot_links = []
    }

    if (msg.body_b !== undefined) {
      resolved.body_b = msg.body_b;
    }
    else {
      resolved.body_b = ''
    }

    if (msg.link_bs !== undefined) {
      resolved.link_bs = msg.link_bs;
    }
    else {
      resolved.link_bs = []
    }

    return resolved;
    }
};

// Constants for message
CollisionEntry.Constants = {
  AVOID_COLLISION: 0,
  ALLOW_COLLISION: 1,
  AVOID_ALL_COLLISIONS: 2,
  ALLOW_ALL_COLLISIONS: 3,
}

module.exports = CollisionEntry;
