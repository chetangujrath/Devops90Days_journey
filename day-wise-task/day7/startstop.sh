#!/bin/bash
#
#
#Script for start and stop Docker and Jenkins services.
#

echo "Enter the service to start & stop (docker or jenkins)"
read service

echo "Enter the service action (start / stop / restart)"
read action

sudo systemctl $action $service

echo "$service is $action Sucessfully...!!!"

sudo systemctl status $service 
