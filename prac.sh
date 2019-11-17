var="hi"
vor="linux"
res="$var $vor"

#echo $res

var2="1"
var3="3"

var2+=$var3

#echo $var2

arr="hello world"
sub=${arr:6:3}  #:6 - start at index 6, :3 continue till three char
#echo $sub

#count=0
#while [ $count -lt 10 ]
#do
 # echo hi
#  let count=$count+1
#done

#for i in `ls`
#do 
  #echo $i
#done

#for j in `seq 1 25 `
#do
  #echo $j
#done

#for i in {1..9..2}
#do
 # echo $i
#done

#count2=20
#until [ $count2 -lt 10 ]
#do
#    echo $count2 
#  let count2-=1
#done 

#_________________
#print odd numbers

for i in {1..99}
do
  rem=$(($i % 2))
  if [ "$rem" -ne "0" ]
  then 
    echo $i
    
  fi
done
