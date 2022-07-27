(defun sol ()
  (labels ((helper (num a b)
	     (if (not (eq 0 (mod num b)))
		 (format t "~D~%" num)
		 (helper (+ num a) a b)))
	   (f ()
	     (let* ((a (read))
		    (b (read))
		    (n (read))
		    (start (* a (ceiling n a))))
	       (if (= 0 (mod a b))
		   (format t "-1~%")
		   (helper start a b)))))
    (let ((num-tc (read)))
      (loop for i from 1 to num-tc do (f)))))

(sol)
