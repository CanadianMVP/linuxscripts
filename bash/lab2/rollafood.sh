#!/bin/bash


arrayvar=(apple grape pizza bananna chocolate ham pork steak watermelon pineapple pear)

#echo $((${arrayvar[$RANDOM % 6 ]}+${arrayvar[$RANDOM % 6]}))
#You want to get two variables, add them together, and then have that
#item selected from the array

array1=$(($RANDOM % 6 +1))
array2=$(($RANDOM % 6 +1))
total=$((array1 + array2))
index=$((total - 2))

#echo ${arrayvar[($RANDOM % 6 +1)+($RANDOM % 6 +1)]}
echo "I rolled $total and that correlates with ${arrayvar[$index]}!"

