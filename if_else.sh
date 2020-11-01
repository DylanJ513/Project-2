#!/bin/bash

num_a=100
num_b=200

if [ $num_a -lt $num_b ]; then
	echo "$num_a is less than $num_b!"
fi
//The purpose of the if-else block is to compare statements to make sure that they yield true. If it doesn't then the else statement will come in to yield an error.
//The code works fine, but the else conditional statement was missing.
