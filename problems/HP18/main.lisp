(defparameter in (open "input.txt"))

(defun solution ()
  (let* ((n (read in))
	 (a (read in))
	 (b (read in))
	 (l (lcm a b)))
    (labels ((f (cnt-a cnt-b cnt-lcm cnt)
      (when (zerop cnt)
	(return-from f (list cnt-a cnt-b cnt-lcm)))
      (let* ((x (read in)))
	(when (zerop (mod x l))
	  (incf cnt-lcm))
	(when (and (zerop (mod x a)) (not (zerop (mod x l))))
	  (incf cnt-a))
	(when (and (zerop (mod x b)) (not (zerop (mod x l))))
	  (incf cnt-b))
	(f cnt-a cnt-b cnt-lcm (1- cnt)))))
      (destructuring-bind (cnt-a cnt-b cnt-lcm) (f 0 0 0 n)
	(cond ((and (> cnt-lcm 0) (>= cnt-a cnt-b)) "BOB")
	      ((and (> cnt-lcm 0) (< cnt-a cnt-b)) "ALICE")
	      ((> cnt-a cnt-b) "BOB")
	      (T "ALICE"))))))

(let ((num-tc (read in)))
  (loop repeat num-tc do (format T "~a~%" (solution))))

(close in)
