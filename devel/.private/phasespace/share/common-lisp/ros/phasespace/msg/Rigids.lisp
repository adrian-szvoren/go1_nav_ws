; Auto-generated. Do not edit!


(cl:in-package phasespace-msg)


;//! \htmlinclude Rigids.msg.html

(cl:defclass <Rigids> (roslisp-msg-protocol:ros-message)
  ((rigids
    :reader rigids
    :initarg :rigids
    :type (cl:vector phasespace-msg:Rigid)
   :initform (cl:make-array 0 :element-type 'phasespace-msg:Rigid :initial-element (cl:make-instance 'phasespace-msg:Rigid))))
)

(cl:defclass Rigids (<Rigids>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rigids>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rigids)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phasespace-msg:<Rigids> is deprecated: use phasespace-msg:Rigids instead.")))

(cl:ensure-generic-function 'rigids-val :lambda-list '(m))
(cl:defmethod rigids-val ((m <Rigids>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phasespace-msg:rigids-val is deprecated.  Use phasespace-msg:rigids instead.")
  (rigids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rigids>) ostream)
  "Serializes a message object of type '<Rigids>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rigids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rigids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rigids>) istream)
  "Deserializes a message object of type '<Rigids>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rigids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rigids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'phasespace-msg:Rigid))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rigids>)))
  "Returns string type for a message object of type '<Rigids>"
  "phasespace/Rigids")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rigids)))
  "Returns string type for a message object of type 'Rigids"
  "phasespace/Rigids")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rigids>)))
  "Returns md5sum for a message object of type '<Rigids>"
  "a8f3dae161da20e992e073ef65cea8a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rigids)))
  "Returns md5sum for a message object of type 'Rigids"
  "a8f3dae161da20e992e073ef65cea8a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rigids>)))
  "Returns full string definition for message of type '<Rigids>"
  (cl:format cl:nil "Rigid[] rigids~%================================================================================~%MSG: phasespace/Rigid~%uint32 id~%uint32 flags~%uint64 time~%float32 x~%float32 y~%float32 z~%float32 qw~%float32 qx~%float32 qy~%float32 qz~%float32 cond~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rigids)))
  "Returns full string definition for message of type 'Rigids"
  (cl:format cl:nil "Rigid[] rigids~%================================================================================~%MSG: phasespace/Rigid~%uint32 id~%uint32 flags~%uint64 time~%float32 x~%float32 y~%float32 z~%float32 qw~%float32 qx~%float32 qy~%float32 qz~%float32 cond~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rigids>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rigids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rigids>))
  "Converts a ROS message object to a list"
  (cl:list 'Rigids
    (cl:cons ':rigids (rigids msg))
))
