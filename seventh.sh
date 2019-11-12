#!/bin/sh

#argument 1 : directory name
#argument 2 : extension of file

ls -l $1 | grep $2$ | awk '{print $9,$5}'

for i in `ls $1 | grep $2$`
do
  wc -l $1/$i >> no.txt
done
sort -rnt" " -k1,1 no.txt
rm no.txt
