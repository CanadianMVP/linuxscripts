#!/bin/bash
#This script will display the content of my Pictures directory


echo -n "In the ~/Pictures directory, there are "
find ~/Pictures/gameofthrones.wikia.com/wiki -type f | wc -l
echo "files"

echo -n "The Picture directory uses "
du -sh  ~/Pictures/gameofthrones.wikia.com/wiki | awk '{print $1}'

echo "The three largest files in this directory are"
echo "========================="
du -h ~/Pictures/gameofthrones.wikia.com/wiki/* | sort -h | tail -3
