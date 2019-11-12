#!/bin/sh

#no arguments

cd /usr/include

# here the file to be mentioned is an output if a command 
# the ^- is a regular expression used to grep in only ordinary files (text
# files mostly) 

#sort -u will sort the file uniquily so that multipple files are not considered

grep -l "printf" `ls -l | awk '/^-/{ print $NF}'` | sort -u | wc -l 
