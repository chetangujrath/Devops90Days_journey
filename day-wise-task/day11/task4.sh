#!/bin/bash
#
#Attemp the read non-existent file and redirect
#
f_path="non_exist_file.txt"
error_log="error.log"

if ! cat "$f_path" 2> "$error_log"; then
       echo "error occurred check $error_log for more details... !!!"
fi       
