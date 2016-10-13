#!/bin/bash

read -p "I can do some magic! You just have to give me a number" mynum
read -p  "Okay, you gave me $mynum. Can I get another?" mynum2

echo "$mynum + $mynum2 = $(($mynum+mynum2))"
echo "$mynum - $mynum2 = $((mynum-mynum2))"
echo "$mynum * $mynum2 = $((mynum*mynum2))"
echo "$mynum / $mynum2 = $((mynum/mynum2)) and the remainer is $((mynum%mynum2))"
