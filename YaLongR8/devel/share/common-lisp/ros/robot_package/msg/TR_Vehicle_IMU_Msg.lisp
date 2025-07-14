; Auto-generated. Do not edit!


(cl:in-package robot_package-msg)


;//! \htmlinclude TR_Vehicle_IMU_Msg.msg.html

(cl:defclass <TR_Vehicle_IMU_Msg> (roslisp-msg-protocol:ros-message)
  ((ppsSyncStamp
    :reader ppsSyncStamp
    :initarg :ppsSyncStamp
    :type cl:fixnum
    :initform 0)
   (temprature
    :reader temprature
    :initarg :temprature
    :type cl:fixnum
    :initform 0)
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0)
   (acc
    :reader acc
    :initarg :acc
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (gyr
    :reader gyr
    :initarg :gyr
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (mag
    :reader mag
    :initarg :mag
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (eul
    :reader eul
    :initarg :eul
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (quat
    :reader quat
    :initarg :quat
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TR_Vehicle_IMU_Msg (<TR_Vehicle_IMU_Msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TR_Vehicle_IMU_Msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TR_Vehicle_IMU_Msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-msg:<TR_Vehicle_IMU_Msg> is deprecated: use robot_package-msg:TR_Vehicle_IMU_Msg instead.")))

(cl:ensure-generic-function 'ppsSyncStamp-val :lambda-list '(m))
(cl:defmethod ppsSyncStamp-val ((m <TR_Vehicle_IMU_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:ppsSyncStamp-val is deprecated.  Use robot_package-msg:ppsSyncStamp instead.")
  (ppsSyncStamp m))

(cl:ensure-generic-function 'temprature-val :lambda-list '(m))
(cl:defmethod temprature-val ((m <TR_Vehicle_IMU_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:temprature-val is deprecated.  Use robot_package-msg:temprature instead.")
  (temprature m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <TR_Vehicle_IMU_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:pressure-val is deprecated.  Use robot_package-msg:pressure instead.")
  (pressure m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <TR_Vehicle_IMU_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:timestamp-val is deprecated.  Use robot_package-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <TR_Vehicle_IMU_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:acc-val is deprecated.  Use robot_package-msg:acc instead.")
  (acc m))

(cl:ensure-generic-function 'gyr-val :lambda-list '(m))
(cl:defmethod gyr-val ((m <TR_Vehicle_IMU_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:gyr-val is deprecated.  Use robot_package-msg:gyr instead.")
  (gyr m))

(cl:ensure-generic-function 'mag-val :lambda-list '(m))
(cl:defmethod mag-val ((m <TR_Vehicle_IMU_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:mag-val is deprecated.  Use robot_package-msg:mag instead.")
  (mag m))

(cl:ensure-generic-function 'eul-val :lambda-list '(m))
(cl:defmethod eul-val ((m <TR_Vehicle_IMU_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:eul-val is deprecated.  Use robot_package-msg:eul instead.")
  (eul m))

(cl:ensure-generic-function 'quat-val :lambda-list '(m))
(cl:defmethod quat-val ((m <TR_Vehicle_IMU_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-msg:quat-val is deprecated.  Use robot_package-msg:quat instead.")
  (quat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TR_Vehicle_IMU_Msg>) ostream)
  "Serializes a message object of type '<TR_Vehicle_IMU_Msg>"
  (cl:let* ((signed (cl:slot-value msg 'ppsSyncStamp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'temprature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'acc))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gyr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'gyr))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'mag))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'eul))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'eul))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'quat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'quat))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TR_Vehicle_IMU_Msg>) istream)
  "Deserializes a message object of type '<TR_Vehicle_IMU_Msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ppsSyncStamp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temprature) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'acc) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'acc)))
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
  (cl:setf (cl:slot-value msg 'gyr) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gyr)))
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
  (cl:setf (cl:slot-value msg 'mag) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mag)))
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
  (cl:setf (cl:slot-value msg 'eul) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'eul)))
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
  (cl:setf (cl:slot-value msg 'quat) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'quat)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TR_Vehicle_IMU_Msg>)))
  "Returns string type for a message object of type '<TR_Vehicle_IMU_Msg>"
  "robot_package/TR_Vehicle_IMU_Msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TR_Vehicle_IMU_Msg)))
  "Returns string type for a message object of type 'TR_Vehicle_IMU_Msg"
  "robot_package/TR_Vehicle_IMU_Msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TR_Vehicle_IMU_Msg>)))
  "Returns md5sum for a message object of type '<TR_Vehicle_IMU_Msg>"
  "f5a5798f0264f71a56bc6105bff0acc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TR_Vehicle_IMU_Msg)))
  "Returns md5sum for a message object of type 'TR_Vehicle_IMU_Msg"
  "f5a5798f0264f71a56bc6105bff0acc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TR_Vehicle_IMU_Msg>)))
  "Returns full string definition for message of type '<TR_Vehicle_IMU_Msg>"
  (cl:format cl:nil "~%    int16 ppsSyncStamp~%    int8 temprature~%    float32 pressure~%    uint32 timestamp~%    float32[] acc~%    float32[] gyr~%    float32[] mag~%    float32[] eul~%    float32[] quat~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TR_Vehicle_IMU_Msg)))
  "Returns full string definition for message of type 'TR_Vehicle_IMU_Msg"
  (cl:format cl:nil "~%    int16 ppsSyncStamp~%    int8 temprature~%    float32 pressure~%    uint32 timestamp~%    float32[] acc~%    float32[] gyr~%    float32[] mag~%    float32[] eul~%    float32[] quat~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TR_Vehicle_IMU_Msg>))
  (cl:+ 0
     2
     1
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'acc) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gyr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mag) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'eul) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'quat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TR_Vehicle_IMU_Msg>))
  "Converts a ROS message object to a list"
  (cl:list 'TR_Vehicle_IMU_Msg
    (cl:cons ':ppsSyncStamp (ppsSyncStamp msg))
    (cl:cons ':temprature (temprature msg))
    (cl:cons ':pressure (pressure msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':gyr (gyr msg))
    (cl:cons ':mag (mag msg))
    (cl:cons ':eul (eul msg))
    (cl:cons ':quat (quat msg))
))
