#!/bin/bash
#
echo "enter the file path"
read f_path
setfacl --restore=$f_path
echo "permission restore done"

