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

class MoveLRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm_index = null;
      this.relative = null;
      this.vel = null;
      this.terminal = null;
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
      if (initObj.hasOwnProperty('terminal')) {
        this.terminal = initObj.terminal
      }
      else {
        this.terminal = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveLRequest
    // Serialize message field [arm_index]
    bufferOffset = _serializer.int8(obj.arm_index, buffer, bufferOffset);
    // Serialize message field [relative]
    bufferOffset = _serializer.bool(obj.relative, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float32(obj.vel, buffer, bufferOffset);
    // Serialize message field [terminal]
    bufferOffset = _arraySerializer.float32(obj.terminal, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveLRequest
    let len;
    let data = new MoveLRequest(null);
    // Deserialize message field [arm_index]
    data.arm_index = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [relative]
    data.relative = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [terminal]
    data.terminal = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.terminal.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_package/MoveLRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90cfe99ec97a358541481396de836cf7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 arm_index
    bool relative
    float32 vel
    float32[] terminal
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveLRequest(null);
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

    if (msg.terminal !== undefined) {
      resolved.terminal = msg.terminal;
    }
    else {
      resolved.terminal = []
    }

    return resolved;
    }
};

class MoveLResponse {
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
    // Serializes a message object of type MoveLResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [strRt]
    bufferOffset = _serializer.string(obj.strRt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveLResponse
    let len;
    let data = new MoveLResponse(null);
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
    return 'robot_package/MoveLResponse';
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
    const resolved = new MoveLResponse(null);
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
  Request: MoveLRequest,
  Response: MoveLResponse,
  md5sum() { return 'cb6915dd75fcbacce2cfbc55a90a7b92'; },
  datatype() { return 'robot_package/MoveL'; }
};
