; Auto-generated. Do not edit!


(cl:in-package robot_package-srv)


;//! \htmlinclude MoveL-request.msg.html

(cl:defclass <MoveL-request> (roslisp-msg-protocol:ros-message)
  ((arm_index
    :reader arm_index
    :initarg :arm_index
    :type cl:fixnum
    :initform 0)
   (relative
    :reader relative
    :initarg :relative
    :type cl:boolean
    :initform cl:nil)
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0)
   (terminal
    :reader terminal
    :initarg :terminal
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MoveL-request (<MoveL-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveL-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveL-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<MoveL-request> is deprecated: use robot_package-srv:MoveL-request instead.")))

(cl:ensure-generic-function 'arm_index-val :lambda-list '(m))
(cl:defmethod arm_index-val ((m <MoveL-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:arm_index-val is deprecated.  Use robot_package-srv:arm_index instead.")
  (arm_index m))

(cl:ensure-generic-function 'relative-val :lambda-list '(m))
(cl:defmethod relative-val ((m <MoveL-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:relative-val is deprecated.  Use robot_package-srv:relative instead.")
  (relative m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <MoveL-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:vel-val is deprecated.  Use robot_package-srv:vel instead.")
  (vel m))

(cl:ensure-generic-function 'terminal-val :lambda-list '(m))
(cl:defmethod terminal-val ((m <MoveL-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:terminal-val is deprecated.  Use robot_package-srv:terminal instead.")
  (terminal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveL-request>) ostream)
  "Serializes a message object of type '<MoveL-request>"
  (cl:let* ((signed (cl:slot-value msg 'arm_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relative) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveL-request>) istream)
  "Deserializes a message object of type '<MoveL-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arm_index) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'relative) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-single-float-bits bits)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveL-request>)))
  "Returns string type for a service object of type '<MoveL-request>"
  "robot_package/MoveLRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveL-request)))
  "Returns string type for a service object of type 'MoveL-request"
  "robot_package/MoveLRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveL-request>)))
  "Returns md5sum for a message object of type '<MoveL-request>"
  "cb6915dd75fcbacce2cfbc55a90a7b92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveL-request)))
  "Returns md5sum for a message object of type 'MoveL-request"
  "cb6915dd75fcbacce2cfbc55a90a7b92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveL-request>)))
  "Returns full string definition for message of type '<MoveL-request>"
  (cl:format cl:nil "int8 arm_index~%bool relative~%float32 vel~%float32[] terminal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveL-request)))
  "Returns full string definition for message of type 'MoveL-request"
  (cl:format cl:nil "int8 arm_index~%bool relative~%float32 vel~%float32[] terminal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveL-request>))
  (cl:+ 0
     1
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'terminal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveL-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveL-request
    (cl:cons ':arm_index (arm_index msg))
    (cl:cons ':relative (relative msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':terminal (terminal msg))
))
;//! \htmlinclude MoveL-response.msg.html

(cl:defclass <MoveL-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MoveL-response (<MoveL-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveL-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveL-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<MoveL-response> is deprecated: use robot_package-srv:MoveL-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MoveL-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:result-val is deprecated.  Use robot_package-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'strRt-val :lambda-list '(m))
(cl:defmethod strRt-val ((m <MoveL-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:strRt-val is deprecated.  Use robot_package-srv:strRt instead.")
  (strRt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveL-response>) ostream)
  "Serializes a message object of type '<MoveL-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveL-response>) istream)
  "Deserializes a message object of type '<MoveL-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveL-response>)))
  "Returns string type for a service object of type '<MoveL-response>"
  "robot_package/MoveLResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveL-response)))
  "Returns string type for a service object of type 'MoveL-response"
  "robot_package/MoveLResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveL-response>)))
  "Returns md5sum for a message object of type '<MoveL-response>"
  "cb6915dd75fcbacce2cfbc55a90a7b92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveL-response)))
  "Returns md5sum for a message object of type 'MoveL-response"
  "cb6915dd75fcbacce2cfbc55a90a7b92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveL-response>)))
  "Returns full string definition for message of type '<MoveL-response>"
  (cl:format cl:nil "int32 result~%string strRt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveL-response)))
  "Returns full string definition for message of type 'MoveL-response"
  (cl:format cl:nil "int32 result~%string strRt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveL-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'strRt))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveL-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveL-response
    (cl:cons ':result (result msg))
    (cl:cons ':strRt (strRt msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveL)))
  'MoveL-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveL)))
  'MoveL-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveL)))
  "Returns string type for a service object of type '<MoveL>"
  "robot_package/MoveL")