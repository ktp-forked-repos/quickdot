(defun see-constants-in (package)
  "show all constants in package which name is provided as 'package or :package. 
  The current value of each one is also printed after the name of the constant
  i.e (see-constants-in 'cl)"
  
  (loop initially (format t "[Constant: actual value] found in ~a:~%" package)
     for i being the present-symbols in package do
       (when (constantp i) (format t "~a: ~a~%" i (eval i)))))
