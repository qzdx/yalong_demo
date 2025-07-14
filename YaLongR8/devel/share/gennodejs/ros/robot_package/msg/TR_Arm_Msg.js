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

class TR_Arm_Msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.dof = null;
      this.servoState = null;
      this.clawState = null;
      this.terminal = null;
      this.joints = null;
      this.homogeneousMatrix = null;
      this.float_array = null;
      this.integer_value = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('dof')) {
        this.dof = initObj.dof
      }
      else {
        this.dof = 0;
      }
      if (initObj.hasOwnProperty('servoState')) {
        this.servoState = initObj.servoState
      }
      else {
        this.servoState = false;
      }
      if (initObj.hasOwnProperty('clawState')) {
        this.clawState = initObj.clawState
      }
      else {
        this.clawState = false;
      }
      if (initObj.hasOwnProperty('terminal')) {
        this.terminal = initObj.terminal
      }
      else {
        this.terminal = [];
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
      if (initObj.hasOwnProperty('homogeneousMatrix')) {
        this.homogeneousMatrix = initObj.homogeneousMatrix
      }
      else {
        this.homogeneousMatrix = [];
      }
      if (initObj.hasOwnProperty('float_array')) {
        this.float_array = initObj.float_array
      }
      else {
        this.float_array = [];
      }
      if (initObj.hasOwnProperty('integer_value')) {
        this.integer_value = initObj.integer_value
      }
      else {
        this.integer_value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TR_Arm_Msg
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [dof]
    bufferOffset = _serializer.int32(obj.dof, buffer, bufferOffset);
    // Serialize message field [servoState]
    bufferOffset = _serializer.bool(obj.servoState, buffer, bufferOffset);
    // Serialize message field [clawState]
    bufferOffset = _serializer.bool(obj.clawState, buffer, bufferOffset);
    // Serialize message field [terminal]
    bufferOffset = _arraySerializer.float32(obj.terminal, buffer, bufferOffset, null);
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float32(obj.joints, buffer, bufferOffset, null);
    // Serialize message field [homogeneousMatrix]
    bufferOffset = _arraySerializer.float32(obj.homogeneousMatrix, buffer, bufferOffset, null);
    // Serialize message field [float_array]
    bufferOffset = _arraySerializer.float32(obj.float_array, buffer, bufferOffset, null);
    // Serialize message field [integer_value]
    bufferOffset = _serializer.int32(obj.integer_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TR_Arm_Msg
    let len;
    let data = new TR_Arm_Msg(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dof]
    data.dof = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [servoState]
    data.servoState = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clawState]
    data.clawState = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [terminal]
    data.terminal = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [homogeneousMatrix]
    data.homogeneousMatrix = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [float_array]
    data.float_array = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [integer_value]
    data.integer_value = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += 4 * object.terminal.length;
    length += 4 * object.joints.length;
    length += 4 * object.homogeneousMatrix.length;
    length += 4 * object.float_array.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_package/TR_Arm_Msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a31b03a07f77ff5658a0c1284b706f5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    int32 dof
    bool servoState
    bool clawState
    float32[] terminal
    float32[] joints
    float32[] homogeneousMatrix
    
    float32[] float_array
    int32 integer_value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TR_Arm_Msg(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.dof !== undefined) {
      resolved.dof = msg.dof;
    }
    else {
      resolved.dof = 0
    }

    if (msg.servoState !== undefined) {
      resolved.servoState = msg.servoState;
    }
    else {
      resolved.servoState = false
    }

    if (msg.clawState !== undefined) {
      resolved.clawState = msg.clawState;
    }
    else {
      resolved.clawState = false
    }

    if (msg.terminal !== undefined) {
      resolved.terminal = msg.terminal;
    }
    else {
      resolved.terminal = []
    }

    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = []
    }

    if (msg.homogeneousMatrix !== undefined) {
      resolved.homogeneousMatrix = msg.homogeneousMatrix;
    }
    else {
      resolved.homogeneousMatrix = []
    }

    if (msg.float_array !== undefined) {
      resolved.float_array = msg.float_array;
    }
    else {
      resolved.float_array = []
    }

    if (msg.integer_value !== undefined) {
      resolved.integer_value = msg.integer_value;
    }
    else {
      resolved.integer_value = 0
    }

    return resolved;
    }
};

module.exports = TR_Arm_Msg;
