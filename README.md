# quickdot
Lisp program to visualize the relationships among quicklisp systems, and other tools related with the study or use of quicklisp

The result is a file quick.dot in your homedir with the relationships among systems (system dependencies) that can be processed with graphviz. To create a pdf file for example you could use:

sfdp -Goverlap=prism -Tpdf quick.dot > quick.pdf

After running the function with "(quickdot)"

Sfdp is better than dot with large graphs, like in this case. -Goverlap is included to avoid overlapping in nodes.

TODO:

adding colors to each group of systems related.
