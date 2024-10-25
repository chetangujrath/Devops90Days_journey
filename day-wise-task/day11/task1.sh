#!/bin/bash
#
#creating directory by shell script
mkdir /home/ubuntu/Devops90DaysChallange/Devops90Days_journey/day-wise-task/day11/task1_dir

#checking the status exist or not
#
if [ $# -ne 0 ]; then
	echo "Failed to create the new directory from this script in /day11/task1_dir"
else
	echo "Directory is created in /day11/task1_dir successfully...!"
fi
