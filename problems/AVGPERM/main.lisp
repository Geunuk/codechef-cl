(defparameter in (open "input.txt"))

(defun f (n)
  (cond ((= n 3) '(3 1 2))
	((= n 4) '(4 2 1 3))
	(T (let ((res (make-array n)))
	     (setf (aref res 0) n)
	     (setf (aref res (- n 1)) (- n 1))
	     (setf (aref res 1) (- n 2))
	     (setf (aref res (- n 2)) ( - n 3))
	     (loop for i from 1 to (- n 3)  do (setf (aref res (+ i 1)) i))
	     (coerce res 'list)))))

(let ((num-tc (read in)))
  (loop repeat num-tc do (format T "~{~a ~}~%" (f (read in)))))

(close in)
