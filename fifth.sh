#!/bin/sh

#argument 1 : directory name (with absolute path if it is not in the current
                                #dierctory)

#ls $1 consists of all the files to be listed         

for i in `ls $1`
do
	echo $i `awk '{
			num += $2
			den ++
			avg = num/den
			}
			END{print avg}' $1/$i `
done
