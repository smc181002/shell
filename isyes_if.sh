#!/bin/sh

#argument 1 : the worf which you want to give

#all valid "yes" sre mentioned in the if statement

if [ $1 = y ] || [ $1 = yes ] || [ $1 = Yes ] || [ $1 = YES ] || [ $1 = Y ]
then    

  #validates the given "yes" and exits with status 9
	
	echo 'This is a valid "yes" argument.'
	exit 9
else	

  #the invalid statements are exited with status 1
	
	echo 'This is not a valid "yes" argument.'
	exit 1
fi
