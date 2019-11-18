#!/bin/bash

echo `who` | awk '{print $4}' > tempw
echo `date` | awk '{print $4}' >tempd

v1=`awk -F":" '{print $1}' tempw`
v2=`awk -F":" '{print $2}' tempw`

v3=`awk -F":" '{print $1}' tempd`
v4=`awk -F":" '{print $2}' tempd`

hr=`expr $v3 - $v1 `
min=`expr $v4 - $v2 `

minhr=60

hrr=`expr $hr \* $minhr`

minn=`expr $min + $hrr`
#echo $minn

h=`expr $minn / $minhr`

m=`expr $minn % $minhr`

echo $h "hrs" $m "min"
