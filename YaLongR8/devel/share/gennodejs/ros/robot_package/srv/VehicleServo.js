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

class VehicleServoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servoState = null;
    }
    else {
      if (initObj.hasOwnProperty('servoState')) {
        this.servoState = initObj.servoState
      }
      else {
        this.servoState = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleServoRequest
    // Serialize message field [servoState]
    bufferOffset = _serializer.bool(obj.servoState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleServoRequest
    let len;
    let data = new VehicleServoRequest(null);
    // Deserialize message field [servoState]
    data.servoState = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_package/VehicleServoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c8e2b4bfe846d0ba5e9035cc5579db0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool servoState
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleServoRequest(null);
    if (msg.servoState !== undefined) {
      resolved.servoState = msg.servoState;
    }
    else {
      resolved.servoState = false
    }

    return resolved;
    }
};

class VehicleServoResponse {
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
    // Serializes a message object of type VehicleServoResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [strRt]
    bufferOffset = _serializer.string(obj.strRt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleServoResponse
    let len;
    let data = new VehicleServoResponse(null);
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
    return 'robot_package/VehicleServoResponse';
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
    const resolved = new VehicleServoResponse(null);
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
  Request: VehicleServoRequest,
  Response: VehicleServoResponse,
  md5sum() { return '27e94be142d556e1a0d52326b0de189d'; },
  datatype() { return 'robot_package/VehicleServo'; }
};
