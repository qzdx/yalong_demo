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

class TR_Vehicle_Msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicleServoState = null;
      this.vehicle_x_vel = null;
      this.vehicle_y_vel = null;
      this.vehicle_z_vel = null;
      this.wheelVel = null;
      this.servoPos = null;
      this.sonar = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicleServoState')) {
        this.vehicleServoState = initObj.vehicleServoState
      }
      else {
        this.vehicleServoState = 0;
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
      if (initObj.hasOwnProperty('wheelVel')) {
        this.wheelVel = initObj.wheelVel
      }
      else {
        this.wheelVel = [];
      }
      if (initObj.hasOwnProperty('servoPos')) {
        this.servoPos = initObj.servoPos
      }
      else {
        this.servoPos = [];
      }
      if (initObj.hasOwnProperty('sonar')) {
        this.sonar = initObj.sonar
      }
      else {
        this.sonar = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TR_Vehicle_Msg
    // Serialize message field [vehicleServoState]
    bufferOffset = _serializer.int32(obj.vehicleServoState, buffer, bufferOffset);
    // Serialize message field [vehicle_x_vel]
    bufferOffset = _serializer.float32(obj.vehicle_x_vel, buffer, bufferOffset);
    // Serialize message field [vehicle_y_vel]
    bufferOffset = _serializer.float32(obj.vehicle_y_vel, buffer, bufferOffset);
    // Serialize message field [vehicle_z_vel]
    bufferOffset = _serializer.float32(obj.vehicle_z_vel, buffer, bufferOffset);
    // Serialize message field [wheelVel]
    bufferOffset = _arraySerializer.float32(obj.wheelVel, buffer, bufferOffset, null);
    // Serialize message field [servoPos]
    bufferOffset = _arraySerializer.float32(obj.servoPos, buffer, bufferOffset, null);
    // Serialize message field [sonar]
    bufferOffset = _arraySerializer.int8(obj.sonar, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TR_Vehicle_Msg
    let len;
    let data = new TR_Vehicle_Msg(null);
    // Deserialize message field [vehicleServoState]
    data.vehicleServoState = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vehicle_x_vel]
    data.vehicle_x_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vehicle_y_vel]
    data.vehicle_y_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vehicle_z_vel]
    data.vehicle_z_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheelVel]
    data.wheelVel = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [servoPos]
    data.servoPos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [sonar]
    data.sonar = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.wheelVel.length;
    length += 4 * object.servoPos.length;
    length += object.sonar.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_package/TR_Vehicle_Msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c1c171ba287db99c1eb25bb64fd0b2f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 vehicleServoState
    float32 vehicle_x_vel                            # mm/s
    float32 vehicle_y_vel                            # mm/s
    float32 vehicle_z_vel                            # rad/s
    
    float32[] wheelVel                              # rad/s
    float32[] servoPos                              # rad
    
    int8[] sonar            
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TR_Vehicle_Msg(null);
    if (msg.vehicleServoState !== undefined) {
      resolved.vehicleServoState = msg.vehicleServoState;
    }
    else {
      resolved.vehicleServoState = 0
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

    if (msg.wheelVel !== undefined) {
      resolved.wheelVel = msg.wheelVel;
    }
    else {
      resolved.wheelVel = []
    }

    if (msg.servoPos !== undefined) {
      resolved.servoPos = msg.servoPos;
    }
    else {
      resolved.servoPos = []
    }

    if (msg.sonar !== undefined) {
      resolved.sonar = msg.sonar;
    }
    else {
      resolved.sonar = []
    }

    return resolved;
    }
};

module.exports = TR_Vehicle_Msg;
