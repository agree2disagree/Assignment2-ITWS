#!/bin/bash
# cat /etc/passwd > user.txt
# set `wc -l user.txt`
set `cat /etc/passwd | wc -l`
log=`who | wc -l`
echo "$log OUT OF $1 USERS ARE ONLINE RIGHT NOW"
