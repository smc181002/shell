#!/bin/sh 

#argument 1 : pid
while true
do
  x=$1
  ps -e | awk -v y=$x '{ if( $1 == y ) {print "the process is running."} }'
  sleep 7s
done
#The ps -e command wil list all the process id's existing, and when
#redirected to awk will search for the pid in the first field and then
#execute the printing process
