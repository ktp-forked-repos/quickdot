# see-constants-in
Lisp program to explore and find quickly all the constants available in a package and its current values.

### Use: 
load the file "see-constants-in" or paste its contents in a common lisp repl and write:

(see-constants-in 'package) or (see-constants-in :package)

Where package is a valid package name.

Example: (see-constants-in 'cl)

Note: (see-constants-in package) without ' or : before the package name is an error

# quickdot
Lisp program to visualize the relationships among quicklisp systems, and other tools related with the study or use of quicklisp

### Requires: 
graphviz, quicklisp

### Use: 
load the file quickdot.lisp or paste the code in a common lisp repl and write:
(quickdot)

### Produces: 
A file quick.gv in your homedir with the relationships among systems (system dependencies) 

This file can then be processed with graphviz in a shell to drawn the plot in several types of files (pdf, jpg, svg, xfig, bitmap...). Examples:

`sfdp -Goverlap=prism -Tpdf quick.gv > quick.pdf`

`sfdp -Goverlap=prism -Tjpg quick.gv > quick.jpg`

Sfdp is better than dot with large graphs, like in this case, but is not supported still by cl-dot. -Goverlap is included to avoid overlapping in nodes.

## TODO:

Adding colors to each group of systems related.
Accept individual systems as argument (first try is still very slow) 
