; Auto-generated. Do not edit!


(cl:in-package phasespace-msg)


;//! \htmlinclude Markers.msg.html

(cl:defclass <Markers> (roslisp-msg-protocol:ros-message)
  ((markers
    :reader markers
    :initarg :markers
    :type (cl:vector phasespace-msg:Marker)
   :initform (cl:make-array 0 :element-type 'phasespace-msg:Marker :initial-element (cl:make-instance 'phasespace-msg:Marker))))
)

(cl:defclass Markers (<Markers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Markers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Markers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name phasespace-msg:<Markers> is deprecated: use phasespace-msg:Markers instead.")))

(cl:ensure-generic-function 'markers-val :lambda-list '(m))
(cl:defmethod markers-val ((m <Markers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader phasespace-msg:markers-val is deprecated.  Use phasespace-msg:markers instead.")
  (markers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Markers>) ostream)
  "Serializes a message object of type '<Markers>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'markers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'markers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Markers>) istream)
  "Deserializes a message object of type '<Markers>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'markers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'markers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'phasespace-msg:Marker))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Markers>)))
  "Returns string type for a message object of type '<Markers>"
  "phasespace/Markers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Markers)))
  "Returns string type for a message object of type 'Markers"
  "phasespace/Markers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Markers>)))
  "Returns md5sum for a message object of type '<Markers>"
  "dd435738f02ace3b863bc0a3b36d34db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Markers)))
  "Returns md5sum for a message object of type 'Markers"
  "dd435738f02ace3b863bc0a3b36d34db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Markers>)))
  "Returns full string definition for message of type '<Markers>"
  (cl:format cl:nil "Marker[] markers~%================================================================================~%MSG: phasespace/Marker~%uint32 id~%uint32 flags~%uint64 time~%float32 x~%float32 y~%float32 z~%float32 cond~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Markers)))
  "Returns full string definition for message of type 'Markers"
  (cl:format cl:nil "Marker[] markers~%================================================================================~%MSG: phasespace/Marker~%uint32 id~%uint32 flags~%uint64 time~%float32 x~%float32 y~%float32 z~%float32 cond~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Markers>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'markers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Markers>))
  "Converts a ROS message object to a list"
  (cl:list 'Markers
    (cl:cons ':markers (markers msg))
))
