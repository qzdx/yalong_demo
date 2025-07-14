; Auto-generated. Do not edit!


(cl:in-package robot_package-msg)


;//! \htmlinclude TR_Vehicle_Msg.msg.html

(cl:defclass <TR_Vehicle_Msg> (roslisp-msg-protocol:ros-message)
  ((vehicleServoState
    :reader vehicleServoState
    :initarg :vehicleServoState
    :type cl:integer
    :initform 0)
   (vehicle_x_vel
    :reader vehicle_x_vel
    :initarg :vehicle_x_vel
    :type cl:float
    :initform 0.0)
   (vehicle_y_vel
    :reader vehicle_y_vel
    :initarg :vehicle_y_vel
    :type cl:float
    :initform 0.0)
   (vehicle_z_vel
    :reader vehicle_z_vel
    :initarg :vehicle_z_vel
    :type cl:float
    :initform 0.0)
   (wheelVel
    :reader wheelVel
    :initarg :wheelVel
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (servoPos
    :reader servoPos
    :initarg :servoPos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (sonar
    :reader sonar
    :initarg :sonar
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass TR_Vehicle_Msg (<TR_Vehicle_Msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TR_Vehicle_Msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TR_Vehicle_Msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-msg:<TR_Vehicle_Msg> is deprecated: use robot_package-msg:TR_Vehicle_Msg instead.")))

(cl:ensure-generic-function 'vehicleServoState-val :lambda-list '(m))
(cl:defmethod vehicleServoState-val ((m <TR_Vehicle_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:vehicleServoState-val is deprecated.  Use robot_package-msg:vehicleServoState instead.")
  (vehicleServoState m))

(cl:ensure-generic-function 'vehicle_x_vel-val :lambda-list '(m))
(cl:defmethod vehicle_x_vel-val ((m <TR_Vehicle_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:vehicle_x_vel-val is deprecated.  Use robot_package-msg:vehicle_x_vel instead.")
  (vehicle_x_vel m))

(cl:ensure-generic-function 'vehicle_y_vel-val :lambda-list '(m))
(cl:defmethod vehicle_y_vel-val ((m <TR_Vehicle_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:vehicle_y_vel-val is deprecated.  Use robot_package-msg:vehicle_y_vel instead.")
  (vehicle_y_vel m))

(cl:ensure-generic-function 'vehicle_z_vel-val :lambda-list '(m))
(cl:defmethod vehicle_z_vel-val ((m <TR_Vehicle_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:vehicle_z_vel-val is deprecated.  Use robot_package-msg:vehicle_z_vel instead.")
  (vehicle_z_vel m))

(cl:ensure-generic-function 'wheelVel-val :lambda-list '(m))
(cl:defmethod wheelVel-val ((m <TR_Vehicle_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:wheelVel-val is deprecated.  Use robot_package-msg:wheelVel instead.")
  (wheelVel m))

(cl:ensure-generic-function 'servoPos-val :lambda-list '(m))
(cl:defmethod servoPos-val ((m <TR_Vehicle_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:servoPos-val is deprecated.  Use robot_package-msg:servoPos instead.")
  (servoPos m))

(cl:ensure-generic-function 'sonar-val :lambda-list '(m))
(cl:defmethod sonar-val ((m <TR_Vehicle_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:sonar-val is deprecated.  Use robot_package-msg:sonar instead.")
  (sonar m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TR_Vehicle_Msg>) ostream)
  "Serializes a message object of type '<TR_Vehicle_Msg>"
  (cl:let* ((signed (cl:slot-value msg 'vehicleServoState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vehicle_x_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vehicle_y_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vehicle_z_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheelVel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'wheelVel))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'servoPos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'servoPos))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sonar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'sonar))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TR_Vehicle_Msg>) istream)
  "Deserializes a message object of type '<TR_Vehicle_Msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicleServoState) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicle_x_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicle_y_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicle_z_vel) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheelVel) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheelVel)))
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
  (cl:setf (cl:slot-value msg 'servoPos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'servoPos)))
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
  (cl:setf (cl:slot-value msg 'sonar) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sonar)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TR_Vehicle_Msg>)))
  "Returns string type for a message object of type '<TR_Vehicle_Msg>"
  "robot_package/TR_Vehicle_Msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TR_Vehicle_Msg)))
  "Returns string type for a message object of type 'TR_Vehicle_Msg"
  "robot_package/TR_Vehicle_Msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TR_Vehicle_Msg>)))
  "Returns md5sum for a message object of type '<TR_Vehicle_Msg>"
  "7c1c171ba287db99c1eb25bb64fd0b2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TR_Vehicle_Msg)))
  "Returns md5sum for a message object of type 'TR_Vehicle_Msg"
  "7c1c171ba287db99c1eb25bb64fd0b2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TR_Vehicle_Msg>)))
  "Returns full string definition for message of type '<TR_Vehicle_Msg>"
  (cl:format cl:nil "int32 vehicleServoState~%float32 vehicle_x_vel                            # mm/s~%float32 vehicle_y_vel                            # mm/s~%float32 vehicle_z_vel                            # rad/s~%~%float32[] wheelVel                              # rad/s~%float32[] servoPos                              # rad~%~%int8[] sonar            ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TR_Vehicle_Msg)))
  "Returns full string definition for message of type 'TR_Vehicle_Msg"
  (cl:format cl:nil "int32 vehicleServoState~%float32 vehicle_x_vel                            # mm/s~%float32 vehicle_y_vel                            # mm/s~%float32 vehicle_z_vel                            # rad/s~%~%float32[] wheelVel                              # rad/s~%float32[] servoPos                              # rad~%~%int8[] sonar            ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TR_Vehicle_Msg>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheelVel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'servoPos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sonar) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TR_Vehicle_Msg>))
  "Converts a ROS message object to a list"
  (cl:list 'TR_Vehicle_Msg
    (cl:cons ':vehicleServoState (vehicleServoState msg))
    (cl:cons ':vehicle_x_vel (vehicle_x_vel msg))
    (cl:cons ':vehicle_y_vel (vehicle_y_vel msg))
    (cl:cons ':vehicle_z_vel (vehicle_z_vel msg))
    (cl:cons ':wheelVel (wheelVel msg))
    (cl:cons ':servoPos (servoPos msg))
    (cl:cons ':sonar (sonar msg))
))
