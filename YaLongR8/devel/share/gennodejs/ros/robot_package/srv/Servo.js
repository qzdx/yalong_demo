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

class ServoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm_index = null;
      this.servoState = null;
    }
    else {
      if (initObj.hasOwnProperty('arm_index')) {
        this.arm_index = initObj.arm_index
      }
      else {
        this.arm_index = 0;
      }
      if (initObj.hasOwnProperty('servoState')) {
        this.servoState = initObj.servoState
      }
      else {
        this.servoState = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoRequest
    // Serialize message field [arm_index]
    bufferOffset = _serializer.int8(obj.arm_index, buffer, bufferOffset);
    // Serialize message field [servoState]
    bufferOffset = _serializer.bool(obj.servoState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoRequest
    let len;
    let data = new ServoRequest(null);
    // Deserialize message field [arm_index]
    data.arm_index = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [servoState]
    data.servoState = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_package/ServoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c376ed0540e588c71e379fca3f7c5604';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 arm_index
    bool servoState
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoRequest(null);
    if (msg.arm_index !== undefined) {
      resolved.arm_index = msg.arm_index;
    }
    else {
      resolved.arm_index = 0
    }

    if (msg.servoState !== undefined) {
      resolved.servoState = msg.servoState;
    }
    else {
      resolved.servoState = false
    }

    return resolved;
    }
};

class ServoResponse {
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
    // Serializes a message object of type ServoResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [strRt]
    bufferOffset = _serializer.string(obj.strRt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoResponse
    let len;
    let data = new ServoResponse(null);
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
    return 'robot_package/ServoResponse';
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
    const resolved = new ServoResponse(null);
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
  Request: ServoRequest,
  Response: ServoResponse,
  md5sum() { return 'b15f459093083ca0158fd62e9d4b9e1d'; },
  datatype() { return 'robot_package/Servo'; }
};
