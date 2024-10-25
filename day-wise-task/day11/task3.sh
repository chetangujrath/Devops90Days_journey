#!/bin/bash
#
## create a file as temp file

tfile="/home/ubuntu/Devops90DaysChallange/Devops90Days_journey/day-wise-task/day11/t_$$.txt"
touch "$tfile"
echo "temp file is created successfully at this please ../../day11/$tfile"

# setup a trap to delete the temp file on exit 

trap 'echo "deleteing the temp file "; rm -f  "$tfile"' EXIT

#main task for sleeping the sys
#
echo "script is running "
sleep 10


#exit the script 
#
echo "Script is completed done....!!!!"
