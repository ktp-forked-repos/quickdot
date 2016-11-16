# quickdot
Lisp program to visualize the relationships among quicklisp systems, and other tools related with the study or use of quicklisp

Requires: graphviz, quicklisp

Use: 
Paste the code in a common lisp repl and then write (quickdot) and pulse enter

Produces: 
A file quick.gv in your homedir with the relationships among systems (system dependencies) 

This file can then be processed with graphviz in a shell to drawn the plot in several types of files (pdf, jpg, svg, xfig, bitmap...). See the examples below.

Examples:

`sfdp -Goverlap=prism -Tpdf quick.gv > quick.pdf

`sfdp -Goverlap=prism -Tjpg quick.gv > quick.jpg

Sfdp is better than dot with large graphs, like in this case, but is not supported still by cl-dot. -Goverlap is included to avoid overlapping in nodes.

TODO:

Adding colors to each group of systems related.
Accept individual systems as argument (first try is still very slow) 
