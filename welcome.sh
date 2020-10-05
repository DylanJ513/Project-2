#!/bin/bash

greetings="welcomne"
user=$(whoami)
day=$(date +%A)

echo "$greetings back $user! Today is $day, which is the best day of the entire week!"
echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"
