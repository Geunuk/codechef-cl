(defparameter in *standard-input*)

(defun solution (size)
  (let ((res 0))
    (loop for i from 1 upto size by 2
	  while (<= i size)
	  do (setf res (+ res (expt (1+ (- size i)) 2))))
    res))

(let ((num-tc (read in)))
  (loop repeat num-tc do (format T "~d~%" (solution (read in)))))
  
