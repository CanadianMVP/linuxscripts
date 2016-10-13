#!/bin/bash
#This is a fancy Hello World!
echo -n "helo world" |sed -e "s/b/o/g" -e "s/l/ll/" -e "s/ol/orl/" |tr "h" "H"|tr "w" "W" |awk '{print $1 "\x20" $2 "\41"}'
