;; Auto-generated. Do not edit!


(when (boundp 'phasespace::Cameras)
  (if (not (find-package "PHASESPACE"))
    (make-package "PHASESPACE"))
  (shadow 'Cameras (find-package "PHASESPACE")))
(unless (find-package "PHASESPACE::CAMERAS")
  (make-package "PHASESPACE::CAMERAS"))

(in-package "ROS")
;;//! \htmlinclude Cameras.msg.html


(defclass phasespace::Cameras
  :super ros::object
  :slots (_cameras ))

(defmethod phasespace::Cameras
  (:init
   (&key
    ((:cameras __cameras) ())
    )
   (send-super :init)
   (setq _cameras __cameras)
   self)
  (:cameras
   (&rest __cameras)
   (if (keywordp (car __cameras))
       (send* _cameras __cameras)
     (progn
       (if __cameras (setq _cameras (car __cameras)))
       _cameras)))
  (:serialization-length
   ()
   (+
    ;; phasespace/Camera[] _cameras
    (apply #'+ (send-all _cameras :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; phasespace/Camera[] _cameras
     (write-long (length _cameras) s)
     (dolist (elem _cameras)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; phasespace/Camera[] _cameras
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cameras (let (r) (dotimes (i n) (push (instance phasespace::Camera :init) r)) r))
     (dolist (elem- _cameras)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get phasespace::Cameras :md5sum-) "c7ff3700c0cc89b1664f151f01ec9489")
(setf (get phasespace::Cameras :datatype-) "phasespace/Cameras")
(setf (get phasespace::Cameras :definition-)
      "Camera[] cameras
================================================================================
MSG: phasespace/Camera
uint32 id
uint32 flags
float32 x
float32 y
float32 z
float32 qw
float32 qx
float32 qy
float32 qz
float32 cond

")



(provide :phasespace/Cameras "c7ff3700c0cc89b1664f151f01ec9489")


