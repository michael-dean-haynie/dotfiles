#!/bin/sh
# Set DELAY to the desired number of seconds between each loop
DELAY=5
i=1
#
while true
do
	echo $i
	((i=i+1))
	cliclick rc:100,100
	sleep $DELAY
	echo $i
	((i=i+1))
	cliclick rc:1000,100
	sleep $DELAY
done
