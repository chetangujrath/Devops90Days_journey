#!/bin/bash

if [ "$#" -ne 3 ]; then
	echo "Usage: $0 Movies 20 50"
	exit 1
fi

#assign argument to variables

Movie=$1
start=$2
end=$3

for((i=$start; i<=$end; i++))
	do
	   dir="$Movie$i"
	   mkdir -p "$dir"
	   echo "created directory: $dir"
	done

echo "All directories are created sucessfully ....!"
