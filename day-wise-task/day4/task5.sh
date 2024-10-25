#!/bin/bash

#get input from CLI 

#arg1=$1
#arg2=$2


#prompt user for input

read -p "Enter your name:- " user_name
read -p "Enter your last name:- " last_name
read -p "Enter your wife name:- " wife_name
read -p "Enter your son name :-" son_name
read -p "Enter your city:- " user_city

#print the values

#echo "CLI arg1: $arg1"
#echo "cli arg2: $arg2"
echo "your name is : $user_name"
echo "your last name : $last_name"
echo "your full name :- $user_name $last_name"
echo "your wife name :- $wife_name"
echo "your sone name :- $son_name"
echo "your city is : $user_city"


