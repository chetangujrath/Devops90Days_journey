#!/bin/bash
#
#creating a script for the giving multiple permission 
#
#
echo "Enter the dir path:---"

read dir_path

echo "Enter the permission (Ie 777,760,750)"
read permission

chmod -R $permission $dir_path

echo "permission is grated to the users"
