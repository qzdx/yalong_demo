// Auto-generated. Do not edit!

// (in-package robot_package.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MoveABSJRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm_index = null;
      this.relative = null;
      this.vel = null;
      this.joints = null;
    }
    else {
      if (initObj.hasOwnProperty('arm_index')) {
        this.arm_index = initObj.arm_index
      }
      else {
        this.arm_index = 0;
      }
      if (initObj.hasOwnProperty('relative')) {
        this.relative = initObj.relative
      }
      else {
        this.relative = false;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0.0;
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveABSJRequest
    // Serialize message field [arm_index]
    bufferOffset = _serializer.int8(obj.arm_index, buffer, bufferOffset);
    // Serialize message field [relative]
    bufferOffset = _serializer.bool(obj.relative, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float32(obj.vel, buffer, bufferOffset);
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float32(obj.joints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveABSJRequest
    let len;
    let data = new MoveABSJRequest(null);
    // Deserialize message field [arm_index]
    data.arm_index = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [relative]
    data.relative = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joints.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_package/MoveABSJRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f211777051c60ebc273544fc7e82ea53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 arm_index
    bool relative
    float32 vel
    float32[] joints
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveABSJRequest(null);
    if (msg.arm_index !== undefined) {
      resolved.arm_index = msg.arm_index;
    }
    else {
      resolved.arm_index = 0
    }

    if (msg.relative !== undefined) {
      resolved.relative = msg.relative;
    }
    else {
      resolved.relative = false
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0.0
    }

    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = []
    }

    return resolved;
    }
};

class MoveABSJResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.strRt = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('strRt')) {
        this.strRt = initObj.strRt
      }
      else {
        this.strRt = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveABSJResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [strRt]
    bufferOffset = _serializer.string(obj.strRt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveABSJResponse
    let len;
    let data = new MoveABSJResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [strRt]
    data.strRt = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.strRt.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_package/MoveABSJResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c90c415abe5c551e00af23b2a60609a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    string strRt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveABSJResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.strRt !== undefined) {
      resolved.strRt = msg.strRt;
    }
    else {
      resolved.strRt = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: MoveABSJRequest,
  Response: MoveABSJResponse,
  md5sum() { return '9f5c1d959c1e4ebf958c5633996996d5'; },
  datatype() { return 'robot_package/MoveABSJ'; }
};
