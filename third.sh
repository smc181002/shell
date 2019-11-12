#!/bin/bash 

#argument 1 : user's home directory name.
#argument 2 : the maximum quota value

#only root can access the user's memory as files in the lab server are denied
#permission except for root

#the output is saved in a variable tot(total) for further use

tot=`du -s /users/imtech/$1 | awk '{print $1}'`

#the memory is printed only in the terminal

echo $tot"KB"

#The saved variable "tot" is passed through an if then statement to print the
#maximum quota value

if [ $tot -ge $2 ]
then 
	echo "WARNING: Disk usage exceeding quota value of $2"
fi

