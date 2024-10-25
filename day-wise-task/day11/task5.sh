#!/bin/bash
#
#Attemp the read non-existent file and redirect
#
f_path="non_exist_file.txt"
error_log="error.log"

if ! cat "$f_path" 2> "$error_log"; then
	echo "Error : failed to load the error message or file '$f_path'." >> "$error_log"
	echo "the file may not exist or there might be a permission issue.. " >> "$error_log"



	echo "an error occurred while attempting the '$f_path'. check  '$error_log' for more details... !!!"
fi       
