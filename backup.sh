#!/bin/bash

if [ -z $1 ]; then
	user=$(whoami)
else
	if [ ! -d "/home/$1" ]; then
	echo "Requested $1 user home directory doesn't exist."
	exit 1
	fi
	user=$1
fi
user=$(whoami)
input=/c/Users/$user
output=/tmp/${user}_dylan$(date +%Y-%m-%d_%H%M%s).tar.gz

# function total_files reports a total number of files for a directory

function total_files {
	find $1 | wc -1
}

# the function total_directories reports total number of directories

function total_directories {
	find $1 -type d | wc -1
}

function total_archived_directories {
	tar -tzf $1 | grep /$ | wc -1
}

function total_archived_files {
	tar -tzf $1 | grep -v /$ | wc -1
}



tar -czf $output $input 2> /dev/null

src_files=$( total_files $input )
src_directories=$( total_directories $input )

arch_files=$( total_archived_files $output )
arch_directories=$( total_archived_directories $output )
echo "########## $user ##########"
echo "Files to be included: $src_files"
echo "Directories to be included: $src_directories"
echo "files to be archived: $arch_files"
echo "Directories to be archived: $arch_directories"

if [$src_files -eq $arch_files ]; then
	echo "Backup of $input completed!"
	echo "Details about the output bavkup file:"
	ls -1 $output
else
	echo "Backup of $input failed!"
fi
echo -n "Files to be included:"
total_files $input
echo -n "Directories to be included:"
total_directories $input

echo "Backup of $input completed! details about the output backup file:"
ls -1 $output

for directory in $*; do
	backup $directory
done;
