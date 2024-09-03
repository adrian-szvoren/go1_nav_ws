// Auto-generated. Do not edit!

// (in-package phasespace.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rigid = require('./Rigid.js');

//-----------------------------------------------------------

class Rigids {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rigids = null;
    }
    else {
      if (initObj.hasOwnProperty('rigids')) {
        this.rigids = initObj.rigids
      }
      else {
        this.rigids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rigids
    // Serialize message field [rigids]
    // Serialize the length for message field [rigids]
    bufferOffset = _serializer.uint32(obj.rigids.length, buffer, bufferOffset);
    obj.rigids.forEach((val) => {
      bufferOffset = Rigid.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rigids
    let len;
    let data = new Rigids(null);
    // Deserialize message field [rigids]
    // Deserialize array length for message field [rigids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rigids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rigids[i] = Rigid.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 48 * object.rigids.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'phasespace/Rigids';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8f3dae161da20e992e073ef65cea8a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Rigid[] rigids
    ================================================================================
    MSG: phasespace/Rigid
    uint32 id
    uint32 flags
    uint64 time
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
    const resolved = new Rigids(null);
    if (msg.rigids !== undefined) {
      resolved.rigids = new Array(msg.rigids.length);
      for (let i = 0; i < resolved.rigids.length; ++i) {
        resolved.rigids[i] = Rigid.Resolve(msg.rigids[i]);
      }
    }
    else {
      resolved.rigids = []
    }

    return resolved;
    }
};

module.exports = Rigids;
