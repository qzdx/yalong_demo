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

class VehicleControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.vehicle_x_vel = null;
      this.vehicle_y_vel = null;
      this.vehicle_z_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('vehicle_x_vel')) {
        this.vehicle_x_vel = initObj.vehicle_x_vel
      }
      else {
        this.vehicle_x_vel = 0.0;
      }
      if (initObj.hasOwnProperty('vehicle_y_vel')) {
        this.vehicle_y_vel = initObj.vehicle_y_vel
      }
      else {
        this.vehicle_y_vel = 0.0;
      }
      if (initObj.hasOwnProperty('vehicle_z_vel')) {
        this.vehicle_z_vel = initObj.vehicle_z_vel
      }
      else {
        this.vehicle_z_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleControlRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    // Serialize message field [vehicle_x_vel]
    bufferOffset = _serializer.float32(obj.vehicle_x_vel, buffer, bufferOffset);
    // Serialize message field [vehicle_y_vel]
    bufferOffset = _serializer.float32(obj.vehicle_y_vel, buffer, bufferOffset);
    // Serialize message field [vehicle_z_vel]
    bufferOffset = _serializer.float32(obj.vehicle_z_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleControlRequest
    let len;
    let data = new VehicleControlRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vehicle_x_vel]
    data.vehicle_x_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vehicle_y_vel]
    data.vehicle_y_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vehicle_z_vel]
    data.vehicle_z_vel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_package/VehicleControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dff672096552495d42c27d125d0602ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 mode
    float32 vehicle_x_vel
    float32 vehicle_y_vel
    float32 vehicle_z_vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleControlRequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.vehicle_x_vel !== undefined) {
      resolved.vehicle_x_vel = msg.vehicle_x_vel;
    }
    else {
      resolved.vehicle_x_vel = 0.0
    }

    if (msg.vehicle_y_vel !== undefined) {
      resolved.vehicle_y_vel = msg.vehicle_y_vel;
    }
    else {
      resolved.vehicle_y_vel = 0.0
    }

    if (msg.vehicle_z_vel !== undefined) {
      resolved.vehicle_z_vel = msg.vehicle_z_vel;
    }
    else {
      resolved.vehicle_z_vel = 0.0
    }

    return resolved;
    }
};

class VehicleControlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleControlResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleControlResponse
    let len;
    let data = new VehicleControlResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_package/VehicleControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034a8e20d6a306665e3a5b340fab3f09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleControlResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: VehicleControlRequest,
  Response: VehicleControlResponse,
  md5sum() { return '32b3b53d0e476262a13481b20e7b9bb8'; },
  datatype() { return 'robot_package/VehicleControl'; }
};
