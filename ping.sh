#!/bin/bash
net=192.168
host=1 
ip=1
while [ $ip -le 255 ]
do
    ping $net.$ip.$host -c 2 | grep -q "ttl=" && echo "$net.$ip.$host Yes" >> 1.txt|| echo "$net.$ip.$host No" >> 1.txt
    ip=`expr $ip + 1`
done
