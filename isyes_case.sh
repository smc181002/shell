#!/bin/sh

#argument 1 : the worf which you want to give

case $1 in 
#exits with status 9
	 [yY]) 
 		echo your text is a valid "yes" 
		exit 9;; 
	 [yY]es) 
 		echo your text is a valid "yes" 
		exit 9;; 
	 YES) 
 		echo your text is a valid "yes" 
		exit 9;;
#exits with status 1
	 *) 
 		echo your text is an invalid "yes" 
		exit 1;; 
 esac
 
