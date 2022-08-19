(defparameter in *standard-input*)

(defun solution (size)
  (let ((res 0))
    (loop for i from 0 while (<= (1+ (* i 2)) size) do (setf res (+ res (expt (- size (* i 2)) 2))))
    res))

(let ((num-tc (read in)))
  (loop repeat num-tc do (format T "~d~%" (solution (read in)))))
  
