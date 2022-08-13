(defparameter in (open "input.txt"))

(defun f (n)
  (let ((res ()))
    (loop for i from 1 to (floor n 2) do (progn (push (- n (1- i)) res)
						(push i res)))
    (when (= (mod n 2) 1)
      (push (ceiling n 2) res))
    (format T "~{~a ~}~%" (nreverse res))))

(let ((num-tc (read in)))
  (loop repeat num-tc do (f (read in))))

  
