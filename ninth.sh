#!/bin/sh

#argument 1 : userid(UID)

#Here xuid is the user id

xuid=$1

#var1 is the output which consists of 1)name 2)home_dir 3)shell 4)group_id

var1=`awk -F":" -v y=$xuid '{ if( $3 == y ) print $1,$7,$6,$4}' /etc/passwd`
echo $var1

#using var1 we defined var2 to be the groupid which could be used in the
#/etc/groups to find the group_number  

var2=`echo $var1 | awk '{ print $4 }'`

#var3 is defined as the the username which can be used in the command "groups"

var3=`echo $var1 | awk '{ print $1 }'` 
awk -F":" -v z=$var2 '{ if($3 == z) print $1,$3}' /etc/group
echo `groups $var3`
