; Auto-generated. Do not edit!


(cl:in-package robot_package-srv)


;//! \htmlinclude VehicleServo-request.msg.html

(cl:defclass <VehicleServo-request> (roslisp-msg-protocol:ros-message)
  ((servoState
    :reader servoState
    :initarg :servoState
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VehicleServo-request (<VehicleServo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleServo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleServo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<VehicleServo-request> is deprecated: use robot_package-srv:VehicleServo-request instead.")))

(cl:ensure-generic-function 'servoState-val :lambda-list '(m))
(cl:defmethod servoState-val ((m <VehicleServo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:servoState-val is deprecated.  Use robot_package-srv:servoState instead.")
  (servoState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleServo-request>) ostream)
  "Serializes a message object of type '<VehicleServo-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'servoState) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleServo-request>) istream)
  "Deserializes a message object of type '<VehicleServo-request>"
    (cl:setf (cl:slot-value msg 'servoState) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleServo-request>)))
  "Returns string type for a service object of type '<VehicleServo-request>"
  "robot_package/VehicleServoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleServo-request)))
  "Returns string type for a service object of type 'VehicleServo-request"
  "robot_package/VehicleServoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleServo-request>)))
  "Returns md5sum for a message object of type '<VehicleServo-request>"
  "27e94be142d556e1a0d52326b0de189d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleServo-request)))
  "Returns md5sum for a message object of type 'VehicleServo-request"
  "27e94be142d556e1a0d52326b0de189d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleServo-request>)))
  "Returns full string definition for message of type '<VehicleServo-request>"
  (cl:format cl:nil "bool servoState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleServo-request)))
  "Returns full string definition for message of type 'VehicleServo-request"
  (cl:format cl:nil "bool servoState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleServo-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleServo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleServo-request
    (cl:cons ':servoState (servoState msg))
))
;//! \htmlinclude VehicleServo-response.msg.html

(cl:defclass <VehicleServo-response> (roslisp-msg-protocol:ros-message)
  ((result
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

(cl:defclass VehicleServo-response (<VehicleServo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleServo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleServo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<VehicleServo-response> is deprecated: use robot_package-srv:VehicleServo-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <VehicleServo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:result-val is deprecated.  Use robot_package-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'strRt-val :lambda-list '(m))
(cl:defmethod strRt-val ((m <VehicleServo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:strRt-val is deprecated.  Use robot_package-srv:strRt instead.")
  (strRt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleServo-response>) ostream)
  "Serializes a message object of type '<VehicleServo-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleServo-response>) istream)
  "Deserializes a message object of type '<VehicleServo-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleServo-response>)))
  "Returns string type for a service object of type '<VehicleServo-response>"
  "robot_package/VehicleServoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleServo-response)))
  "Returns string type for a service object of type 'VehicleServo-response"
  "robot_package/VehicleServoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleServo-response>)))
  "Returns md5sum for a message object of type '<VehicleServo-response>"
  "27e94be142d556e1a0d52326b0de189d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleServo-response)))
  "Returns md5sum for a message object of type 'VehicleServo-response"
  "27e94be142d556e1a0d52326b0de189d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleServo-response>)))
  "Returns full string definition for message of type '<VehicleServo-response>"
  (cl:format cl:nil "int32 result~%string strRt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleServo-response)))
  "Returns full string definition for message of type 'VehicleServo-response"
  (cl:format cl:nil "int32 result~%string strRt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleServo-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'strRt))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleServo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleServo-response
    (cl:cons ':result (result msg))
    (cl:cons ':strRt (strRt msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VehicleServo)))
  'VehicleServo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VehicleServo)))
  'VehicleServo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleServo)))
  "Returns string type for a service object of type '<VehicleServo>"
  "robot_package/VehicleServo")