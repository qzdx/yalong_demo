// Auto-generated. Do not edit!

// (in-package robot_package.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ImageToFrameRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image = null;
      this.armIndex = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('armIndex')) {
        this.armIndex = initObj.armIndex
      }
      else {
        this.armIndex = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageToFrameRequest
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [armIndex]
    bufferOffset = _serializer.int8(obj.armIndex, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageToFrameRequest
    let len;
    let data = new ImageToFrameRequest(null);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [armIndex]
    data.armIndex = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    length += 4 * object.position.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_package/ImageToFrameRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd77936b4adceabd54a5fc3e51d5165bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image image
    int8 armIndex
    float32[] position
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageToFrameRequest(null);
    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    if (msg.armIndex !== undefined) {
      resolved.armIndex = msg.armIndex;
    }
    else {
      resolved.armIndex = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    return resolved;
    }
};

class ImageToFrameResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.terminal = null;
      this.result = null;
      this.strRt = null;
    }
    else {
      if (initObj.hasOwnProperty('terminal')) {
        this.terminal = initObj.terminal
      }
      else {
        this.terminal = [];
      }
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
    // Serializes a message object of type ImageToFrameResponse
    // Serialize message field [terminal]
    bufferOffset = _arraySerializer.float32(obj.terminal, buffer, bufferOffset, null);
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [strRt]
    bufferOffset = _serializer.string(obj.strRt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageToFrameResponse
    let len;
    let data = new ImageToFrameResponse(null);
    // Deserialize message field [terminal]
    data.terminal = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [strRt]
    data.strRt = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.terminal.length;
    length += object.strRt.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_package/ImageToFrameResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1850009fee622b55df0c6903f94f4582';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] terminal
    int32 result
    string strRt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageToFrameResponse(null);
    if (msg.terminal !== undefined) {
      resolved.terminal = msg.terminal;
    }
    else {
      resolved.terminal = []
    }

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
  Request: ImageToFrameRequest,
  Response: ImageToFrameResponse,
  md5sum() { return '98dec61900beef2fa84144aa65b13d5c'; },
  datatype() { return 'robot_package/ImageToFrame'; }
};
