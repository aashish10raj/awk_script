# awk_script
create a awk script to read and retrieve information from the text file





Q1. Consider the log file as given below
------------------------
100 12 25 a.txt
500 2 125 b.txt
300 3 300 c.txt
200 100 150 d.txt
------------------------

where
First column: total number of lines 
Second column: starting line number
Third column: Ending line number
Fourth column: name of the source file


Write an awk script to copy data from the file name in fourth column 
to another file. The name of the destination file is obtained by 
changing the case of the source file name.
You have to copy only the lines whose range is given in second and 
third column.
