(defun quickdot ()
  "Creates a graphviz file (quick.gv) with the relationships among quicklisp systems. To obtain a pdf file use: sfdp -Goverlap=prism -Tpdf quick.gv > quick.pdf. You will need to have graphviz installed"
  (with-open-file (gr (merge-pathnames (make-pathname :name "quick" :type "gv") (user-homedir-pathname))
		 :direction :output
		 :if-exists :supersede
		 :if-does-not-exist :create)

    (loop
       initially (format gr "graph quicklisp \{~%rankdir=LR;~%edge [arrowhead\=\"none\"];~%~%")
       for i in (ql:system-list) do
	 (format gr "\"~a\" [style\=filled, fillcolor\=\"gray\", label\=\"~:*~a\"];~%" (ql-dist:name i))

	 (unless (null (ql-dist:required-systems i))
	 (format gr "\"~a\" -- \{~{\"\~a~^\" ~}\"\};~%"
		 (ql-dist:name i)
		 (ql-dist:required-systems i)))
        finally (format gr "}"))))
