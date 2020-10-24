#!/bin/bash -x
declare -A Dic
echo "This is Sorting arithmetic computation problem"
echo "Enter 3 values"
read a b c
res1=$(( $a + $b * $c ))
echo "$res1"
res2=$(( $a * $b + $c ))
echo "$res2"
res3=$(( $c + $a / $b ))
echo "$res3"
res4=$(( $a % $b + $c ))
echo "$res4"
Dic[1]=$res1
Dic[2]=$res2
Dic[3]=$res3
Dic[4]=$res4
for((i=1;i<5;i++))
do
	arr[$i]=${Dic[$i]}
done
for ((i = 0; i<5; i++))
do
	for((j = 0; j<5-i-1; j++))
	do
		if [[ ${arr[j]} -lt ${arr[$((j+1))]} ]]
        	then
            		# swap
            		temp=${arr[j]}
            		arr[$j]=${arr[$((j+1))]}
            		arr[$((j+1))]=$temp
        	fi
    	done
done
echo "Array sorted in Descending order :"
echo ${arr[*]}
for ((i = 0; i<5; i++))
do
	for((j = 0; j<5-i-1; j++))
    	do
        	if [[ ${arr[j]} -gt ${arr[$((j+1))]} ]]
        	then
            		# swap
			temp=${arr[j]}
           	 	arr[$j]=${arr[$((j+1))]}
            		arr[$((j+1))]=$temp
        	fi
    	done
done
echo "Array sorted in Ascending order :"
echo ${arr[*]}
