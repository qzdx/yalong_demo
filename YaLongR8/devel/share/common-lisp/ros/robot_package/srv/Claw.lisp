; Auto-generated. Do not edit!


(cl:in-package robot_package-srv)


;//! \htmlinclude Claw-request.msg.html

(cl:defclass <Claw-request> (roslisp-msg-protocol:ros-message)
  ((arm_index
    :reader arm_index
    :initarg :arm_index
    :type cl:fixnum
    :initform 0)
   (clawState
    :reader clawState
    :initarg :clawState
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Claw-request (<Claw-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Claw-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Claw-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<Claw-request> is deprecated: use robot_package-srv:Claw-request instead.")))

(cl:ensure-generic-function 'arm_index-val :lambda-list '(m))
(cl:defmethod arm_index-val ((m <Claw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:arm_index-val is deprecated.  Use robot_package-srv:arm_index instead.")
  (arm_index m))

(cl:ensure-generic-function 'clawState-val :lambda-list '(m))
(cl:defmethod clawState-val ((m <Claw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:clawState-val is deprecated.  Use robot_package-srv:clawState instead.")
  (clawState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Claw-request>) ostream)
  "Serializes a message object of type '<Claw-request>"
  (cl:let* ((signed (cl:slot-value msg 'arm_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clawState) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Claw-request>) istream)
  "Deserializes a message object of type '<Claw-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arm_index) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'clawState) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Claw-request>)))
  "Returns string type for a service object of type '<Claw-request>"
  "robot_package/ClawRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Claw-request)))
  "Returns string type for a service object of type 'Claw-request"
  "robot_package/ClawRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Claw-request>)))
  "Returns md5sum for a message object of type '<Claw-request>"
  "e74a584008af7a48800c53c1a71e78cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Claw-request)))
  "Returns md5sum for a message object of type 'Claw-request"
  "e74a584008af7a48800c53c1a71e78cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Claw-request>)))
  "Returns full string definition for message of type '<Claw-request>"
  (cl:format cl:nil "int8 arm_index~%bool clawState~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Claw-request)))
  "Returns full string definition for message of type 'Claw-request"
  (cl:format cl:nil "int8 arm_index~%bool clawState~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Claw-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Claw-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Claw-request
    (cl:cons ':arm_index (arm_index msg))
    (cl:cons ':clawState (clawState msg))
))
;//! \htmlinclude Claw-response.msg.html

(cl:defclass <Claw-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Claw-response (<Claw-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Claw-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Claw-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<Claw-response> is deprecated: use robot_package-srv:Claw-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Claw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:result-val is deprecated.  Use robot_package-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'strRt-val :lambda-list '(m))
(cl:defmethod strRt-val ((m <Claw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:strRt-val is deprecated.  Use robot_package-srv:strRt instead.")
  (strRt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Claw-response>) ostream)
  "Serializes a message object of type '<Claw-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Claw-response>) istream)
  "Deserializes a message object of type '<Claw-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Claw-response>)))
  "Returns string type for a service object of type '<Claw-response>"
  "robot_package/ClawResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Claw-response)))
  "Returns string type for a service object of type 'Claw-response"
  "robot_package/ClawResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Claw-response>)))
  "Returns md5sum for a message object of type '<Claw-response>"
  "e74a584008af7a48800c53c1a71e78cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Claw-response)))
  "Returns md5sum for a message object of type 'Claw-response"
  "e74a584008af7a48800c53c1a71e78cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Claw-response>)))
  "Returns full string definition for message of type '<Claw-response>"
  (cl:format cl:nil "int32 result~%string strRt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Claw-response)))
  "Returns full string definition for message of type 'Claw-response"
  (cl:format cl:nil "int32 result~%string strRt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Claw-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'strRt))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Claw-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Claw-response
    (cl:cons ':result (result msg))
    (cl:cons ':strRt (strRt msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Claw)))
  'Claw-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Claw)))
  'Claw-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Claw)))
  "Returns string type for a service object of type '<Claw>"
  "robot_package/Claw")