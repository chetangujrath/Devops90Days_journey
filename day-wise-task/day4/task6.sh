#!/bin/bash

#promt for user input

read -p "enter first number :-     " num1
read -p "enter second number :-    " num2

#compare the two numbers


if [ "$num1" -gt "$num2" ]; then
	echo " $num1 is greater than $num2"
elif [ "$num1" -lt "$num2" ]; then
	echo "$num1 is less than $num2"
else 
	echo " $num1 is equal to $num2"
fi
