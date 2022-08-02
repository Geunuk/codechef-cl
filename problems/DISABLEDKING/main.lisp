;(defparameter in *standard-input*)
(defparameter in (open "input.txt"))

(let ((num-tc (read in)))
    (loop repeat num-tc do (progn (let ((n (read in)))
                                    (if (evenp n)
                                        (format t "~D~%" n)
                                        (format t "~D~%" (1- n)))))))
