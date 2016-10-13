#!/bin/bash


#While there is anything on the command line

while [ $# -gt 0 ]; do
	#Display the first item on the command line, then shift
#the argument to the left.

	echo "$1"
	shift
done


