; Auto-generated. Do not edit!


(cl:in-package robot_package-msg)


;//! \htmlinclude MoveABSJGoal.msg.html

(cl:defclass <MoveABSJGoal> (roslisp-msg-protocol:ros-message)
  ((arm_index
    :reader arm_index
    :initarg :arm_index
    :type cl:fixnum
    :initform 0)
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveABSJGoal (<MoveABSJGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveABSJGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveABSJGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-msg:<MoveABSJGoal> is deprecated: use robot_package-msg:MoveABSJGoal instead.")))

(cl:ensure-generic-function 'arm_index-val :lambda-list '(m))
(cl:defmethod arm_index-val ((m <MoveABSJGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:arm_index-val is deprecated.  Use robot_package-msg:arm_index instead.")
  (arm_index m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <MoveABSJGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:joints-val is deprecated.  Use robot_package-msg:joints instead.")
  (joints m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <MoveABSJGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:vel-val is deprecated.  Use robot_package-msg:vel instead.")
  (vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveABSJGoal>) ostream)
  "Serializes a message object of type '<MoveABSJGoal>"
  (cl:let* ((signed (cl:slot-value msg 'arm_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveABSJGoal>) istream)
  "Deserializes a message object of type '<MoveABSJGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arm_index) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveABSJGoal>)))
  "Returns string type for a message object of type '<MoveABSJGoal>"
  "robot_package/MoveABSJGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveABSJGoal)))
  "Returns string type for a message object of type 'MoveABSJGoal"
  "robot_package/MoveABSJGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveABSJGoal>)))
  "Returns md5sum for a message object of type '<MoveABSJGoal>"
  "df8d4c44bf84b41df5e79538a31971f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveABSJGoal)))
  "Returns md5sum for a message object of type 'MoveABSJGoal"
  "df8d4c44bf84b41df5e79538a31971f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveABSJGoal>)))
  "Returns full string definition for message of type '<MoveABSJGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal 消息~%int8 arm_index~%float32[] joints~%float32 vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveABSJGoal)))
  "Returns full string definition for message of type 'MoveABSJGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal 消息~%int8 arm_index~%float32[] joints~%float32 vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveABSJGoal>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveABSJGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveABSJGoal
    (cl:cons ':arm_index (arm_index msg))
    (cl:cons ':joints (joints msg))
    (cl:cons ':vel (vel msg))
))
