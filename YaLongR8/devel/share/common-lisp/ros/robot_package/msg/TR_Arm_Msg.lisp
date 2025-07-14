; Auto-generated. Do not edit!


(cl:in-package robot_package-msg)


;//! \htmlinclude TR_Arm_Msg.msg.html

(cl:defclass <TR_Arm_Msg> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (dof
    :reader dof
    :initarg :dof
    :type cl:integer
    :initform 0)
   (servoState
    :reader servoState
    :initarg :servoState
    :type cl:boolean
    :initform cl:nil)
   (clawState
    :reader clawState
    :initarg :clawState
    :type cl:boolean
    :initform cl:nil)
   (terminal
    :reader terminal
    :initarg :terminal
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (homogeneousMatrix
    :reader homogeneousMatrix
    :initarg :homogeneousMatrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (float_array
    :reader float_array
    :initarg :float_array
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (integer_value
    :reader integer_value
    :initarg :integer_value
    :type cl:integer
    :initform 0))
)

(cl:defclass TR_Arm_Msg (<TR_Arm_Msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TR_Arm_Msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TR_Arm_Msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-msg:<TR_Arm_Msg> is deprecated: use robot_package-msg:TR_Arm_Msg instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <TR_Arm_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:name-val is deprecated.  Use robot_package-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'dof-val :lambda-list '(m))
(cl:defmethod dof-val ((m <TR_Arm_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:dof-val is deprecated.  Use robot_package-msg:dof instead.")
  (dof m))

(cl:ensure-generic-function 'servoState-val :lambda-list '(m))
(cl:defmethod servoState-val ((m <TR_Arm_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:servoState-val is deprecated.  Use robot_package-msg:servoState instead.")
  (servoState m))

(cl:ensure-generic-function 'clawState-val :lambda-list '(m))
(cl:defmethod clawState-val ((m <TR_Arm_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:clawState-val is deprecated.  Use robot_package-msg:clawState instead.")
  (clawState m))

(cl:ensure-generic-function 'terminal-val :lambda-list '(m))
(cl:defmethod terminal-val ((m <TR_Arm_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:terminal-val is deprecated.  Use robot_package-msg:terminal instead.")
  (terminal m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <TR_Arm_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:joints-val is deprecated.  Use robot_package-msg:joints instead.")
  (joints m))

(cl:ensure-generic-function 'homogeneousMatrix-val :lambda-list '(m))
(cl:defmethod homogeneousMatrix-val ((m <TR_Arm_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:homogeneousMatrix-val is deprecated.  Use robot_package-msg:homogeneousMatrix instead.")
  (homogeneousMatrix m))

(cl:ensure-generic-function 'float_array-val :lambda-list '(m))
(cl:defmethod float_array-val ((m <TR_Arm_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:float_array-val is deprecated.  Use robot_package-msg:float_array instead.")
  (float_array m))

(cl:ensure-generic-function 'integer_value-val :lambda-list '(m))
(cl:defmethod integer_value-val ((m <TR_Arm_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:integer_value-val is deprecated.  Use robot_package-msg:integer_value instead.")
  (integer_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TR_Arm_Msg>) ostream)
  "Serializes a message object of type '<TR_Arm_Msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'dof)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'servoState) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clawState) 1 0)) ostream)
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'homogeneousMatrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'homogeneousMatrix))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'float_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'float_array))
  (cl:let* ((signed (cl:slot-value msg 'integer_value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TR_Arm_Msg>) istream)
  "Deserializes a message object of type '<TR_Arm_Msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dof) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'servoState) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clawState) (cl:not (cl:zerop (cl:read-byte istream))))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'homogeneousMatrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'homogeneousMatrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'float_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'float_array)))
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
      (cl:setf (cl:slot-value msg 'integer_value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TR_Arm_Msg>)))
  "Returns string type for a message object of type '<TR_Arm_Msg>"
  "robot_package/TR_Arm_Msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TR_Arm_Msg)))
  "Returns string type for a message object of type 'TR_Arm_Msg"
  "robot_package/TR_Arm_Msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TR_Arm_Msg>)))
  "Returns md5sum for a message object of type '<TR_Arm_Msg>"
  "a31b03a07f77ff5658a0c1284b706f5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TR_Arm_Msg)))
  "Returns md5sum for a message object of type 'TR_Arm_Msg"
  "a31b03a07f77ff5658a0c1284b706f5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TR_Arm_Msg>)))
  "Returns full string definition for message of type '<TR_Arm_Msg>"
  (cl:format cl:nil "string name~%int32 dof~%bool servoState~%bool clawState~%float32[] terminal~%float32[] joints~%float32[] homogeneousMatrix~%~%float32[] float_array~%int32 integer_value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TR_Arm_Msg)))
  "Returns full string definition for message of type 'TR_Arm_Msg"
  (cl:format cl:nil "string name~%int32 dof~%bool servoState~%bool clawState~%float32[] terminal~%float32[] joints~%float32[] homogeneousMatrix~%~%float32[] float_array~%int32 integer_value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TR_Arm_Msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'terminal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'homogeneousMatrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'float_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TR_Arm_Msg>))
  "Converts a ROS message object to a list"
  (cl:list 'TR_Arm_Msg
    (cl:cons ':name (name msg))
    (cl:cons ':dof (dof msg))
    (cl:cons ':servoState (servoState msg))
    (cl:cons ':clawState (clawState msg))
    (cl:cons ':terminal (terminal msg))
    (cl:cons ':joints (joints msg))
    (cl:cons ':homogeneousMatrix (homogeneousMatrix msg))
    (cl:cons ':float_array (float_array msg))
    (cl:cons ':integer_value (integer_value msg))
))
