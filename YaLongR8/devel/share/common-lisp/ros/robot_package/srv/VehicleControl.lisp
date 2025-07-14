; Auto-generated. Do not edit!


(cl:in-package robot_package-srv)


;//! \htmlinclude VehicleControl-request.msg.html

(cl:defclass <VehicleControl-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
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
    :initform 0.0))
)

(cl:defclass VehicleControl-request (<VehicleControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<VehicleControl-request> is deprecated: use robot_package-srv:VehicleControl-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <VehicleControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:mode-val is deprecated.  Use robot_package-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'vehicle_x_vel-val :lambda-list '(m))
(cl:defmethod vehicle_x_vel-val ((m <VehicleControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:vehicle_x_vel-val is deprecated.  Use robot_package-srv:vehicle_x_vel instead.")
  (vehicle_x_vel m))

(cl:ensure-generic-function 'vehicle_y_vel-val :lambda-list '(m))
(cl:defmethod vehicle_y_vel-val ((m <VehicleControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:vehicle_y_vel-val is deprecated.  Use robot_package-srv:vehicle_y_vel instead.")
  (vehicle_y_vel m))

(cl:ensure-generic-function 'vehicle_z_vel-val :lambda-list '(m))
(cl:defmethod vehicle_z_vel-val ((m <VehicleControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:vehicle_z_vel-val is deprecated.  Use robot_package-srv:vehicle_z_vel instead.")
  (vehicle_z_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleControl-request>) ostream)
  "Serializes a message object of type '<VehicleControl-request>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleControl-request>) istream)
  "Deserializes a message object of type '<VehicleControl-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleControl-request>)))
  "Returns string type for a service object of type '<VehicleControl-request>"
  "robot_package/VehicleControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleControl-request)))
  "Returns string type for a service object of type 'VehicleControl-request"
  "robot_package/VehicleControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleControl-request>)))
  "Returns md5sum for a message object of type '<VehicleControl-request>"
  "32b3b53d0e476262a13481b20e7b9bb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleControl-request)))
  "Returns md5sum for a message object of type 'VehicleControl-request"
  "32b3b53d0e476262a13481b20e7b9bb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleControl-request>)))
  "Returns full string definition for message of type '<VehicleControl-request>"
  (cl:format cl:nil "int32 mode~%float32 vehicle_x_vel~%float32 vehicle_y_vel~%float32 vehicle_z_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleControl-request)))
  "Returns full string definition for message of type 'VehicleControl-request"
  (cl:format cl:nil "int32 mode~%float32 vehicle_x_vel~%float32 vehicle_y_vel~%float32 vehicle_z_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleControl-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleControl-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':vehicle_x_vel (vehicle_x_vel msg))
    (cl:cons ':vehicle_y_vel (vehicle_y_vel msg))
    (cl:cons ':vehicle_z_vel (vehicle_z_vel msg))
))
;//! \htmlinclude VehicleControl-response.msg.html

(cl:defclass <VehicleControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass VehicleControl-response (<VehicleControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<VehicleControl-response> is deprecated: use robot_package-srv:VehicleControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <VehicleControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:result-val is deprecated.  Use robot_package-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleControl-response>) ostream)
  "Serializes a message object of type '<VehicleControl-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleControl-response>) istream)
  "Deserializes a message object of type '<VehicleControl-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleControl-response>)))
  "Returns string type for a service object of type '<VehicleControl-response>"
  "robot_package/VehicleControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleControl-response)))
  "Returns string type for a service object of type 'VehicleControl-response"
  "robot_package/VehicleControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleControl-response>)))
  "Returns md5sum for a message object of type '<VehicleControl-response>"
  "32b3b53d0e476262a13481b20e7b9bb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleControl-response)))
  "Returns md5sum for a message object of type 'VehicleControl-response"
  "32b3b53d0e476262a13481b20e7b9bb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleControl-response>)))
  "Returns full string definition for message of type '<VehicleControl-response>"
  (cl:format cl:nil "int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleControl-response)))
  "Returns full string definition for message of type 'VehicleControl-response"
  (cl:format cl:nil "int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleControl-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VehicleControl)))
  'VehicleControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VehicleControl)))
  'VehicleControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleControl)))
  "Returns string type for a service object of type '<VehicleControl>"
  "robot_package/VehicleControl")