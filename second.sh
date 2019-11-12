#!/bin/sh

#argument 1 : mention the maximum size of the file

#assigns argument to a variable val

val=$1 
awk -F" " -v x=$val  ' $5 > x {print $NF}' `ls -l $1 | awk '/^-/{ print $0 }'`
