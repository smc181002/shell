#!/bin/sh

#no arguments

for i in *" "*
do
  mv "$i" `echo $i | sed -e 's/ /_/g'`
done
ls
