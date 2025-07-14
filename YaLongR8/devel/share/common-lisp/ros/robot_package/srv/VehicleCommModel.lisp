; Auto-generated. Do not edit!


(cl:in-package robot_package-srv)


;//! \htmlinclude VehicleCommModel-request.msg.html

(cl:defclass <VehicleCommModel-request> (roslisp-msg-protocol:ros-message)
  ((model
    :reader model
    :initarg :model
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleCommModel-request (<VehicleCommModel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleCommModel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleCommModel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<VehicleCommModel-request> is deprecated: use robot_package-srv:VehicleCommModel-request instead.")))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <VehicleCommModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:model-val is deprecated.  Use robot_package-srv:model instead.")
  (model m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleCommModel-request>) ostream)
  "Serializes a message object of type '<VehicleCommModel-request>"
  (cl:let* ((signed (cl:slot-value msg 'model)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleCommModel-request>) istream)
  "Deserializes a message object of type '<VehicleCommModel-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleCommModel-request>)))
  "Returns string type for a service object of type '<VehicleCommModel-request>"
  "robot_package/VehicleCommModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleCommModel-request)))
  "Returns string type for a service object of type 'VehicleCommModel-request"
  "robot_package/VehicleCommModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleCommModel-request>)))
  "Returns md5sum for a message object of type '<VehicleCommModel-request>"
  "e14465039f2205faa968203b38699079")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleCommModel-request)))
  "Returns md5sum for a message object of type 'VehicleCommModel-request"
  "e14465039f2205faa968203b38699079")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleCommModel-request>)))
  "Returns full string definition for message of type '<VehicleCommModel-request>"
  (cl:format cl:nil "int8 model~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleCommModel-request)))
  "Returns full string definition for message of type 'VehicleCommModel-request"
  (cl:format cl:nil "int8 model~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleCommModel-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleCommModel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleCommModel-request
    (cl:cons ':model (model msg))
))
;//! \htmlinclude VehicleCommModel-response.msg.html

(cl:defclass <VehicleCommModel-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass VehicleCommModel-response (<VehicleCommModel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleCommModel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleCommModel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_package-srv:<VehicleCommModel-response> is deprecated: use robot_package-srv:VehicleCommModel-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <VehicleCommModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_package-srv:result-val is deprecated.  Use robot_package-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleCommModel-response>) ostream)
  "Serializes a message object of type '<VehicleCommModel-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleCommModel-response>) istream)
  "Deserializes a message object of type '<VehicleCommModel-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleCommModel-response>)))
  "Returns string type for a service object of type '<VehicleCommModel-response>"
  "robot_package/VehicleCommModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleCommModel-response)))
  "Returns string type for a service object of type 'VehicleCommModel-response"
  "robot_package/VehicleCommModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleCommModel-response>)))
  "Returns md5sum for a message object of type '<VehicleCommModel-response>"
  "e14465039f2205faa968203b38699079")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleCommModel-response)))
  "Returns md5sum for a message object of type 'VehicleCommModel-response"
  "e14465039f2205faa968203b38699079")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleCommModel-response>)))
  "Returns full string definition for message of type '<VehicleCommModel-response>"
  (cl:format cl:nil "int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleCommModel-response)))
  "Returns full string definition for message of type 'VehicleCommModel-response"
  (cl:format cl:nil "int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleCommModel-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleCommModel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleCommModel-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VehicleCommModel)))
  'VehicleCommModel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VehicleCommModel)))
  'VehicleCommModel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleCommModel)))
  "Returns string type for a service object of type '<VehicleCommModel>"
  "robot_package/VehicleCommModel")