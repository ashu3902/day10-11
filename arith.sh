#!/bin/bash -x
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
