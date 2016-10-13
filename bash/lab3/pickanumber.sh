#!/bin/bash
#This script will have the user guess a number between 1 and 10
#and tell them if they guessed right!


randomnum=$(($RANDOM % 10+1))
read -p "Guess what number I am thinking of between 1 and 10:" guess

while [ $randomnum -ne $guess ];
do
if [ $randomnum -lt $guess ]
then
echo "You were wrong! Guess lower!"
else
echo "You were wrong! Guess higher!"
fi
#echo "Nope. thats not it!"
read -p "Try again:" guess

done
echo "You got it!"
