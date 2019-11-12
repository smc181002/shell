#!/bin/sh 

#awk is used to print the second an third column as standard output on termianl
#The Standard Output is redirected to a temp.txt file

awk '{print $2,$3}' greedy-mds-800-150.out > temp.txt

#The temp.txt is now pasted to the ga-mds-800-150.out file and saved to a temp2.txt file
paste -d" "  ga-mds-800-150.out temp.txt  > temp2.txt

#The temp2.txt file is then redirected to ga-mds-800-150.out
cat temp2.txt >  ga-mds-800-150.out
cat  ga-mds-800-150.out
