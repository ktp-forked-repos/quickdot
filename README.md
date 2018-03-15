# see-constants-in
Small Lisp program to explore and find quickly all the constants available in a package and its values.

### Use: 
load the file "see-constants-in" or paste its contents in a common lisp repl and write:

(see-constants-in 'package) or (see-constants-in :package)

Where package is a valid package name.

Notes: In most of the cases you'll need to load the package before with quickload or the program will be unable to find it. 
(see-constants-in package) without a colon or an apostrophe before the package name, will abort with an error message for the same reason

Examples: 

(see-constants-in 'cl)

(ql:quickload :cl-ppcre) (see-constants-in :cl-ppcre)

# quickdot
Lisp program to visualize the relationships among quicklisp systems, and other tools related with the study or use of quicklisp

### Requires: 
graphviz, quicklisp

### Use: 
load the file "quickdot.lisp" or paste the code in a common lisp repl and write:
(quickdot)

### Produces: 
A file quick.gv in your homedir with the relationships among systems (system dependencies) 

This file can then be processed with graphviz in a shell to drawn the plot in several types of files (pdf, jpg, svg, xfig, bitmap...). Examples:

`sfdp -Goverlap=prism -Tpdf quick.gv > quick.pdf`

`sfdp -Goverlap=prism -Tjpg quick.gv > quick.jpg`

Sfdp is better than dot with large graphs, like in this case, but is not supported still by cl-dot. -Goverlap is included to avoid overlapping in nodes.

## TODO:

See TODO.txt
