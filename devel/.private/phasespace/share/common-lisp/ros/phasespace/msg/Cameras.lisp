; Auto-generated. Do not edit!


(cl:in-package phasespace-msg)


;//! \htmlinclude Cameras.msg.html

(cl:defclass <Cameras> (roslisp-msg-protocol:ros-message)
  ((cameras
    :reader cameras
    :initarg :cameras
    :type (cl:vector phasespace-msg:Camera)
   :initform (cl:make-array 0 :element-type 'phasespace-msg:Camera :initial-element (cl:make-instance 'phasespace-msg:Camera))))
)

(cl:defclass Cameras (<Cameras>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cameras>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cameras)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phasespace-msg:<Cameras> is deprecated: use phasespace-msg:Cameras instead.")))

(cl:ensure-generic-function 'cameras-val :lambda-list '(m))
(cl:defmethod cameras-val ((m <Cameras>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phasespace-msg:cameras-val is deprecated.  Use phasespace-msg:cameras instead.")
  (cameras m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cameras>) ostream)
  "Serializes a message object of type '<Cameras>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cameras))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cameras))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cameras>) istream)
  "Deserializes a message object of type '<Cameras>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cameras) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cameras)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'phasespace-msg:Camera))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cameras>)))
  "Returns string type for a message object of type '<Cameras>"
  "phasespace/Cameras")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cameras)))
  "Returns string type for a message object of type 'Cameras"
  "phasespace/Cameras")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cameras>)))
  "Returns md5sum for a message object of type '<Cameras>"
  "c7ff3700c0cc89b1664f151f01ec9489")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cameras)))
  "Returns md5sum for a message object of type 'Cameras"
  "c7ff3700c0cc89b1664f151f01ec9489")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cameras>)))
  "Returns full string definition for message of type '<Cameras>"
  (cl:format cl:nil "Camera[] cameras~%================================================================================~%MSG: phasespace/Camera~%uint32 id~%uint32 flags~%float32 x~%float32 y~%float32 z~%float32 qw~%float32 qx~%float32 qy~%float32 qz~%float32 cond~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cameras)))
  "Returns full string definition for message of type 'Cameras"
  (cl:format cl:nil "Camera[] cameras~%================================================================================~%MSG: phasespace/Camera~%uint32 id~%uint32 flags~%float32 x~%float32 y~%float32 z~%float32 qw~%float32 qx~%float32 qy~%float32 qz~%float32 cond~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cameras>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cameras) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cameras>))
  "Converts a ROS message object to a list"
  (cl:list 'Cameras
    (cl:cons ':cameras (cameras msg))
))
