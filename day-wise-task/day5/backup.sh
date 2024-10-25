#!/bin/bash


#variables
backup_dir="/root"

ts=$(date +"%y%m%d_%H%M%S")

backup_file="${backup_dir}/backup_${ts}.tar.gz"

tar -czf $backwqup_file /root/backup

echo "backup created $backup_file"
