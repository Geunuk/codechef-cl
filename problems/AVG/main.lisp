(defparameter in *standard-input*)
;(defparameter in (open "input.txt"))

(defun sol ()
    (labels ((f ()
	       (let* ((n (read in))
		      (m (read in))
		      (k (read in))
		      (sum (* (+ n m) k)))
		 (loop for i from 1 to n do (setq sum (- sum (read in))))
		 (if (and (> sum 0) (= (mod sum m) 0))
		     (format t "~d~%" (/ sum m))
		     (format t "~d~%" -1)))))
      (let ((num-tc (read in)))
	(loop for i from 1 to num-tc do (f)))))

(sol)
