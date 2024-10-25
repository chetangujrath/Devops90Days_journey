#!/bin/bash
#
echo "enter the path to backup"
read d_path
getfacl -R $d_path > perm_backup.txt
echo "backup done"

