#!/bin/bash
#This script will display all the regular files in setuid and setgid.


echo "SETUID Files in /usr"
find /usr -type f -executable -perm 4000 -ls

echo "SETGID Files in /usr"
find /usr -type f -executable -perm 2000 -ls


