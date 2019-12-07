#!/usr/bin/env bash

date_copied=$(date +%m.%d.%y-%H.%M.%S)

#####################
#    Help Menu      #
#####################

help() {
	echo "Usage: $0 FILE"
	echo "Copy a file and append date and time."
}

if [ $1 = "--help" ]
then
	help
	exit 0
else
	if [ -e $1 ]
	then
		echo "Copying file......"
		cp -ivr $1 $1-$date_copied
		echo "Backup complete."
	else
		echo "File does not exist:	$1"
		echo "Try $0 --help"
	fi
fi
exit 0
