; Auto-generated. Do not edit!


(cl:in-package robot_package-srv)


;//! \htmlinclude MoveABSJ-request.msg.html

(cl:defclass <MoveABSJ-request> (roslisp-msg-protocol:ros-message)
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
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MoveABSJ-request (<MoveABSJ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveABSJ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveABSJ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<MoveABSJ-request> is deprecated: use robot_package-srv:MoveABSJ-request instead.")))

(cl:ensure-generic-function 'arm_index-val :lambda-list '(m))
(cl:defmethod arm_index-val ((m <MoveABSJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:arm_index-val is deprecated.  Use robot_package-srv:arm_index instead.")
  (arm_index m))

(cl:ensure-generic-function 'relative-val :lambda-list '(m))
(cl:defmethod relative-val ((m <MoveABSJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:relative-val is deprecated.  Use robot_package-srv:relative instead.")
  (relative m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <MoveABSJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:vel-val is deprecated.  Use robot_package-srv:vel instead.")
  (vel m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <MoveABSJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:joints-val is deprecated.  Use robot_package-srv:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveABSJ-request>) ostream)
  "Serializes a message object of type '<MoveABSJ-request>"
  (cl:let* ((signed (cl:slot-value msg 'arm_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relative) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveABSJ-request>) istream)
  "Deserializes a message object of type '<MoveABSJ-request>"
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
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveABSJ-request>)))
  "Returns string type for a service object of type '<MoveABSJ-request>"
  "robot_package/MoveABSJRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveABSJ-request)))
  "Returns string type for a service object of type 'MoveABSJ-request"
  "robot_package/MoveABSJRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveABSJ-request>)))
  "Returns md5sum for a message object of type '<MoveABSJ-request>"
  "9f5c1d959c1e4ebf958c5633996996d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveABSJ-request)))
  "Returns md5sum for a message object of type 'MoveABSJ-request"
  "9f5c1d959c1e4ebf958c5633996996d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveABSJ-request>)))
  "Returns full string definition for message of type '<MoveABSJ-request>"
  (cl:format cl:nil "int8 arm_index~%bool relative~%float32 vel~%float32[] joints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveABSJ-request)))
  "Returns full string definition for message of type 'MoveABSJ-request"
  (cl:format cl:nil "int8 arm_index~%bool relative~%float32 vel~%float32[] joints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveABSJ-request>))
  (cl:+ 0
     1
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveABSJ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveABSJ-request
    (cl:cons ':arm_index (arm_index msg))
    (cl:cons ':relative (relative msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':joints (joints msg))
))
;//! \htmlinclude MoveABSJ-response.msg.html

(cl:defclass <MoveABSJ-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MoveABSJ-response (<MoveABSJ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveABSJ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveABSJ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<MoveABSJ-response> is deprecated: use robot_package-srv:MoveABSJ-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MoveABSJ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:result-val is deprecated.  Use robot_package-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'strRt-val :lambda-list '(m))
(cl:defmethod strRt-val ((m <MoveABSJ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:strRt-val is deprecated.  Use robot_package-srv:strRt instead.")
  (strRt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveABSJ-response>) ostream)
  "Serializes a message object of type '<MoveABSJ-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveABSJ-response>) istream)
  "Deserializes a message object of type '<MoveABSJ-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveABSJ-response>)))
  "Returns string type for a service object of type '<MoveABSJ-response>"
  "robot_package/MoveABSJResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveABSJ-response)))
  "Returns string type for a service object of type 'MoveABSJ-response"
  "robot_package/MoveABSJResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveABSJ-response>)))
  "Returns md5sum for a message object of type '<MoveABSJ-response>"
  "9f5c1d959c1e4ebf958c5633996996d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveABSJ-response)))
  "Returns md5sum for a message object of type 'MoveABSJ-response"
  "9f5c1d959c1e4ebf958c5633996996d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveABSJ-response>)))
  "Returns full string definition for message of type '<MoveABSJ-response>"
  (cl:format cl:nil "int32 result~%string strRt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveABSJ-response)))
  "Returns full string definition for message of type 'MoveABSJ-response"
  (cl:format cl:nil "int32 result~%string strRt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveABSJ-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'strRt))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveABSJ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveABSJ-response
    (cl:cons ':result (result msg))
    (cl:cons ':strRt (strRt msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveABSJ)))
  'MoveABSJ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveABSJ)))
  'MoveABSJ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveABSJ)))
  "Returns string type for a service object of type '<MoveABSJ>"
  "robot_package/MoveABSJ")