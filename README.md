# quickdot
Lisp program to visualize the relationships among quicklisp systems, and other tools related with the study or use of quicklisp

The result is a file quick.dot in your homedir with the relationships among systems (system dependencies) that can be processed with graphviz. After running the program in a lisp repl, to create a pdf file for example you could use:

sfdp -Goverlap=prism -Tpdf quick.dot > quick.pdf

You need -Goverlap to avoid overlapping in nodes, but you could experiment an omit it also. Sfdp is better than dot with large graphs, like in this case.

TODO:

adding colors to each group of systems related.
