#!/bin/bash
#
#dir path provided as argument
if [ -z "$1" ] ; then 
	echo "Usage: $0 /home/ubuntu/day8"
	exit 1
fi

#assign the dir path
S_DIR="$1"

#check if the directory path is exists.
if [ ! -d "$S_DIR" ]; then
	echo "The dir $S_DIR does not exist."
	exit 1
fi

#creater the backup dir if not exist.
B_DIR="${HOME}/backups"
mkdir -p "$B_DIR"

#create a timestamp folder for the backup
TSP=$(date +"%Y%m%d_%H%M%S")
D_DIR="${B_DIR}/backup_${TSP}"

#perform the backup by copying dir
#
cp -r "$S_DIR" "$D_DIR"

echo "backup of $S_DIR complete at $D_DIR."

#rotatiton : keep the last 3 backups

B_COUNT=$(ls -dt "${B_DIR}"/backup_* | wc -l)

if [ "$B_COUNT" -gt 3 ]; then
	ls -dt "${B_DIR}/backup_* | tail -n +4 | xargs rm -rf"
	echo "old backup removed, only the last 3 are here"
fi


