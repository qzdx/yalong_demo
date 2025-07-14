// Auto-generated. Do not edit!

// (in-package robot_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TR_Vehicle_IMU_Msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ppsSyncStamp = null;
      this.temprature = null;
      this.pressure = null;
      this.timestamp = null;
      this.acc = null;
      this.gyr = null;
      this.mag = null;
      this.eul = null;
      this.quat = null;
    }
    else {
      if (initObj.hasOwnProperty('ppsSyncStamp')) {
        this.ppsSyncStamp = initObj.ppsSyncStamp
      }
      else {
        this.ppsSyncStamp = 0;
      }
      if (initObj.hasOwnProperty('temprature')) {
        this.temprature = initObj.temprature
      }
      else {
        this.temprature = 0;
      }
      if (initObj.hasOwnProperty('pressure')) {
        this.pressure = initObj.pressure
      }
      else {
        this.pressure = 0.0;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = [];
      }
      if (initObj.hasOwnProperty('gyr')) {
        this.gyr = initObj.gyr
      }
      else {
        this.gyr = [];
      }
      if (initObj.hasOwnProperty('mag')) {
        this.mag = initObj.mag
      }
      else {
        this.mag = [];
      }
      if (initObj.hasOwnProperty('eul')) {
        this.eul = initObj.eul
      }
      else {
        this.eul = [];
      }
      if (initObj.hasOwnProperty('quat')) {
        this.quat = initObj.quat
      }
      else {
        this.quat = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TR_Vehicle_IMU_Msg
    // Serialize message field [ppsSyncStamp]
    bufferOffset = _serializer.int16(obj.ppsSyncStamp, buffer, bufferOffset);
    // Serialize message field [temprature]
    bufferOffset = _serializer.int8(obj.temprature, buffer, bufferOffset);
    // Serialize message field [pressure]
    bufferOffset = _serializer.float32(obj.pressure, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.uint32(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _arraySerializer.float32(obj.acc, buffer, bufferOffset, null);
    // Serialize message field [gyr]
    bufferOffset = _arraySerializer.float32(obj.gyr, buffer, bufferOffset, null);
    // Serialize message field [mag]
    bufferOffset = _arraySerializer.float32(obj.mag, buffer, bufferOffset, null);
    // Serialize message field [eul]
    bufferOffset = _arraySerializer.float32(obj.eul, buffer, bufferOffset, null);
    // Serialize message field [quat]
    bufferOffset = _arraySerializer.float32(obj.quat, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TR_Vehicle_IMU_Msg
    let len;
    let data = new TR_Vehicle_IMU_Msg(null);
    // Deserialize message field [ppsSyncStamp]
    data.ppsSyncStamp = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [temprature]
    data.temprature = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [pressure]
    data.pressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [gyr]
    data.gyr = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [mag]
    data.mag = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [eul]
    data.eul = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [quat]
    data.quat = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.acc.length;
    length += 4 * object.gyr.length;
    length += 4 * object.mag.length;
    length += 4 * object.eul.length;
    length += 4 * object.quat.length;
    return length + 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_package/TR_Vehicle_IMU_Msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5a5798f0264f71a56bc6105bff0acc0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
        int16 ppsSyncStamp
        int8 temprature
        float32 pressure
        uint32 timestamp
        float32[] acc
        float32[] gyr
        float32[] mag
        float32[] eul
        float32[] quat
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TR_Vehicle_IMU_Msg(null);
    if (msg.ppsSyncStamp !== undefined) {
      resolved.ppsSyncStamp = msg.ppsSyncStamp;
    }
    else {
      resolved.ppsSyncStamp = 0
    }

    if (msg.temprature !== undefined) {
      resolved.temprature = msg.temprature;
    }
    else {
      resolved.temprature = 0
    }

    if (msg.pressure !== undefined) {
      resolved.pressure = msg.pressure;
    }
    else {
      resolved.pressure = 0.0
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = []
    }

    if (msg.gyr !== undefined) {
      resolved.gyr = msg.gyr;
    }
    else {
      resolved.gyr = []
    }

    if (msg.mag !== undefined) {
      resolved.mag = msg.mag;
    }
    else {
      resolved.mag = []
    }

    if (msg.eul !== undefined) {
      resolved.eul = msg.eul;
    }
    else {
      resolved.eul = []
    }

    if (msg.quat !== undefined) {
      resolved.quat = msg.quat;
    }
    else {
      resolved.quat = []
    }

    return resolved;
    }
};

module.exports = TR_Vehicle_IMU_Msg;
