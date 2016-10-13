#!/bin/bash
#this script will show some interface stuff


interfacenames=(`ifconfig |grep '^[a-zA-Z]'|awk '{print $1}' | sed 's/://g'`)

declare -a ips
ips0=(`ifconfig ${interfacenames[0]} | grep 'inet addr' |
 sed -e 's/ *inet addr://'| sed -e 's/ .*//'`)
ips1=( `ifconfig ${interfacenames[1]} |grep 'inet addr' |
 sed -e 's/ *inet addr://'| sed -e 's/ .*//'`)

gatewayip=`route -n|grep '^0.0.0.0'|awk '{print $2}'`


cat <<EOF
Interface ${interfacenames[0]} has address ${ips[0]}
Interface ${interfacenames[1]} has address ${ips[1]}
My default gateway is $gatewayip
EOF
