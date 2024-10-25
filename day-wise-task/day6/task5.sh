#!/bin/bash

echo "enter the file path for access:-"
read f_path

echo "enter the username for per...:-"
read username

echo "enter the permission for access...:-ex;;- rwx rx wx"
read perm

sudo setfacl -m u:$username:$perm $f_path

echo "Grated ACL permission to user"
