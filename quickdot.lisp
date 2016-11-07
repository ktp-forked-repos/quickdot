(defun quickdot ()
  "Creates a graphviz file (quick.dot) with the relationships among quicklisp systems. To obtain a pdf file use: sfdp -Goverlap=prism -Tpdf quick.dot > quick.pdf. You will need to have graphviz installed"
  (with-open-file (gr (merge-pathnames (make-pathname :name "quick" :type "dot") (user-homedir-pathname))
		 :direction :output
		 :if-exists :rename
		 :if-does-not-exist :create)
    (loop
       initially (format gr "digraph quicklisp \{~%rankdir=LR;~%edge [arrowhead\=\"none\"];~%~%" )
       for i in (ql:system-list) do
	 (format gr "\"~a\" [style\=\"filled\", fillcolor\=\"gray\", label\=\"~a\"];~%"
		 (ql-dist:name i) (ql-dist:name i))
	 (loop for req in (ql-dist:required-systems i) do
	      (format gr "\"~a\" -> \"~a\";~%"
		      (ql-dist:name i) req))
       finally (format gr "}"))))
