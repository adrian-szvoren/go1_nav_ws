;; Auto-generated. Do not edit!


(when (boundp 'phasespace::Markers)
  (if (not (find-package "PHASESPACE"))
    (make-package "PHASESPACE"))
  (shadow 'Markers (find-package "PHASESPACE")))
(unless (find-package "PHASESPACE::MARKERS")
  (make-package "PHASESPACE::MARKERS"))

(in-package "ROS")
;;//! \htmlinclude Markers.msg.html


(defclass phasespace::Markers
  :super ros::object
  :slots (_markers ))

(defmethod phasespace::Markers
  (:init
   (&key
    ((:markers __markers) ())
    )
   (send-super :init)
   (setq _markers __markers)
   self)
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:serialization-length
   ()
   (+
    ;; phasespace/Marker[] _markers
    (apply #'+ (send-all _markers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; phasespace/Marker[] _markers
     (write-long (length _markers) s)
     (dolist (elem _markers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; phasespace/Marker[] _markers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markers (let (r) (dotimes (i n) (push (instance phasespace::Marker :init) r)) r))
     (dolist (elem- _markers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get phasespace::Markers :md5sum-) "dd435738f02ace3b863bc0a3b36d34db")
(setf (get phasespace::Markers :datatype-) "phasespace/Markers")
(setf (get phasespace::Markers :definition-)
      "Marker[] markers
================================================================================
MSG: phasespace/Marker
uint32 id
uint32 flags
uint64 time
float32 x
float32 y
float32 z
float32 cond

")



(provide :phasespace/Markers "dd435738f02ace3b863bc0a3b36d34db")


