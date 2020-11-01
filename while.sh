#!/bin/bash

counter=0
while [ $counter -lt 3 ] do
	let counter+=1
	echo $counter
done
//The purpose of the while block is to act on a given condition. It will continue to execute code if it it encased in do, and  done while the specific condition is true. If it is false, then the execution will stop.
//The code did not run properly due to a missing ";" after the "]".
