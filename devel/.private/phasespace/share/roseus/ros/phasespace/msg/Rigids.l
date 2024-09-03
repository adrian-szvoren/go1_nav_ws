;; Auto-generated. Do not edit!


(when (boundp 'phasespace::Rigids)
  (if (not (find-package "PHASESPACE"))
    (make-package "PHASESPACE"))
  (shadow 'Rigids (find-package "PHASESPACE")))
(unless (find-package "PHASESPACE::RIGIDS")
  (make-package "PHASESPACE::RIGIDS"))

(in-package "ROS")
;;//! \htmlinclude Rigids.msg.html


(defclass phasespace::Rigids
  :super ros::object
  :slots (_rigids ))

(defmethod phasespace::Rigids
  (:init
   (&key
    ((:rigids __rigids) ())
    )
   (send-super :init)
   (setq _rigids __rigids)
   self)
  (:rigids
   (&rest __rigids)
   (if (keywordp (car __rigids))
       (send* _rigids __rigids)
     (progn
       (if __rigids (setq _rigids (car __rigids)))
       _rigids)))
  (:serialization-length
   ()
   (+
    ;; phasespace/Rigid[] _rigids
    (apply #'+ (send-all _rigids :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; phasespace/Rigid[] _rigids
     (write-long (length _rigids) s)
     (dolist (elem _rigids)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; phasespace/Rigid[] _rigids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rigids (let (r) (dotimes (i n) (push (instance phasespace::Rigid :init) r)) r))
     (dolist (elem- _rigids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get phasespace::Rigids :md5sum-) "a8f3dae161da20e992e073ef65cea8a4")
(setf (get phasespace::Rigids :datatype-) "phasespace/Rigids")
(setf (get phasespace::Rigids :definition-)
      "Rigid[] rigids
================================================================================
MSG: phasespace/Rigid
uint32 id
uint32 flags
uint64 time
float32 x
float32 y
float32 z
float32 qw
float32 qx
float32 qy
float32 qz
float32 cond

")



(provide :phasespace/Rigids "a8f3dae161da20e992e073ef65cea8a4")


