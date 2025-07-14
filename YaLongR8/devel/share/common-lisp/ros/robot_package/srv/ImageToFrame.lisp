; Auto-generated. Do not edit!


(cl:in-package robot_package-srv)


;//! \htmlinclude ImageToFrame-request.msg.html

(cl:defclass <ImageToFrame-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (armIndex
    :reader armIndex
    :initarg :armIndex
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ImageToFrame-request (<ImageToFrame-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageToFrame-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageToFrame-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<ImageToFrame-request> is deprecated: use robot_package-srv:ImageToFrame-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <ImageToFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:image-val is deprecated.  Use robot_package-srv:image instead.")
  (image m))

(cl:ensure-generic-function 'armIndex-val :lambda-list '(m))
(cl:defmethod armIndex-val ((m <ImageToFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:armIndex-val is deprecated.  Use robot_package-srv:armIndex instead.")
  (armIndex m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ImageToFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:position-val is deprecated.  Use robot_package-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageToFrame-request>) ostream)
  "Serializes a message object of type '<ImageToFrame-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (cl:let* ((signed (cl:slot-value msg 'armIndex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageToFrame-request>) istream)
  "Deserializes a message object of type '<ImageToFrame-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'armIndex) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageToFrame-request>)))
  "Returns string type for a service object of type '<ImageToFrame-request>"
  "robot_package/ImageToFrameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageToFrame-request)))
  "Returns string type for a service object of type 'ImageToFrame-request"
  "robot_package/ImageToFrameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageToFrame-request>)))
  "Returns md5sum for a message object of type '<ImageToFrame-request>"
  "98dec61900beef2fa84144aa65b13d5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageToFrame-request)))
  "Returns md5sum for a message object of type 'ImageToFrame-request"
  "98dec61900beef2fa84144aa65b13d5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageToFrame-request>)))
  "Returns full string definition for message of type '<ImageToFrame-request>"
  (cl:format cl:nil "sensor_msgs/Image image~%int8 armIndex~%float32[] position~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageToFrame-request)))
  "Returns full string definition for message of type 'ImageToFrame-request"
  (cl:format cl:nil "sensor_msgs/Image image~%int8 armIndex~%float32[] position~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageToFrame-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageToFrame-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageToFrame-request
    (cl:cons ':image (image msg))
    (cl:cons ':armIndex (armIndex msg))
    (cl:cons ':position (position msg))
))
;//! \htmlinclude ImageToFrame-response.msg.html

(cl:defclass <ImageToFrame-response> (roslisp-msg-protocol:ros-message)
  ((terminal
    :reader terminal
    :initarg :terminal
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (strRt
    :reader strRt
    :initarg :strRt
    :type cl:string
    :initform ""))
)

(cl:defclass ImageToFrame-response (<ImageToFrame-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageToFrame-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageToFrame-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<ImageToFrame-response> is deprecated: use robot_package-srv:ImageToFrame-response instead.")))

(cl:ensure-generic-function 'terminal-val :lambda-list '(m))
(cl:defmethod terminal-val ((m <ImageToFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:terminal-val is deprecated.  Use robot_package-srv:terminal instead.")
  (terminal m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ImageToFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:result-val is deprecated.  Use robot_package-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'strRt-val :lambda-list '(m))
(cl:defmethod strRt-val ((m <ImageToFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:strRt-val is deprecated.  Use robot_package-srv:strRt instead.")
  (strRt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageToFrame-response>) ostream)
  "Serializes a message object of type '<ImageToFrame-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'terminal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'terminal))
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'strRt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'strRt))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageToFrame-response>) istream)
  "Deserializes a message object of type '<ImageToFrame-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'terminal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'terminal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'strRt) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'strRt) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageToFrame-response>)))
  "Returns string type for a service object of type '<ImageToFrame-response>"
  "robot_package/ImageToFrameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageToFrame-response)))
  "Returns string type for a service object of type 'ImageToFrame-response"
  "robot_package/ImageToFrameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageToFrame-response>)))
  "Returns md5sum for a message object of type '<ImageToFrame-response>"
  "98dec61900beef2fa84144aa65b13d5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageToFrame-response)))
  "Returns md5sum for a message object of type 'ImageToFrame-response"
  "98dec61900beef2fa84144aa65b13d5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageToFrame-response>)))
  "Returns full string definition for message of type '<ImageToFrame-response>"
  (cl:format cl:nil "float32[] terminal~%int32 result~%string strRt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageToFrame-response)))
  "Returns full string definition for message of type 'ImageToFrame-response"
  (cl:format cl:nil "float32[] terminal~%int32 result~%string strRt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageToFrame-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'terminal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:length (cl:slot-value msg 'strRt))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageToFrame-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageToFrame-response
    (cl:cons ':terminal (terminal msg))
    (cl:cons ':result (result msg))
    (cl:cons ':strRt (strRt msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ImageToFrame)))
  'ImageToFrame-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ImageToFrame)))
  'ImageToFrame-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageToFrame)))
  "Returns string type for a service object of type '<ImageToFrame>"
  "robot_package/ImageToFrame")