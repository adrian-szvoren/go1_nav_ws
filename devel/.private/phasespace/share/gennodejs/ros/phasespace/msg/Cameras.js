// Auto-generated. Do not edit!

// (in-package phasespace.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Camera = require('./Camera.js');

//-----------------------------------------------------------

class Cameras {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cameras = null;
    }
    else {
      if (initObj.hasOwnProperty('cameras')) {
        this.cameras = initObj.cameras
      }
      else {
        this.cameras = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cameras
    // Serialize message field [cameras]
    // Serialize the length for message field [cameras]
    bufferOffset = _serializer.uint32(obj.cameras.length, buffer, bufferOffset);
    obj.cameras.forEach((val) => {
      bufferOffset = Camera.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cameras
    let len;
    let data = new Cameras(null);
    // Deserialize message field [cameras]
    // Deserialize array length for message field [cameras]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cameras = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cameras[i] = Camera.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 40 * object.cameras.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'phasespace/Cameras';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7ff3700c0cc89b1664f151f01ec9489';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Camera[] cameras
    ================================================================================
    MSG: phasespace/Camera
    uint32 id
    uint32 flags
    float32 x
    float32 y
    float32 z
    float32 qw
    float32 qx
    float32 qy
    float32 qz
    float32 cond
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Cameras(null);
    if (msg.cameras !== undefined) {
      resolved.cameras = new Array(msg.cameras.length);
      for (let i = 0; i < resolved.cameras.length; ++i) {
        resolved.cameras[i] = Camera.Resolve(msg.cameras[i]);
      }
    }
    else {
      resolved.cameras = []
    }

    return resolved;
    }
};

module.exports = Cameras;
