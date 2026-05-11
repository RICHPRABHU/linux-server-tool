#!/bin/bash
NAME="Cloud Engineer"
DISK_LIMIT=80

echo "Welcome, $NAME!"

DISK_USED=$(df / | tail -1 | awk '{print $5}' | tr -d '%')
echo "Disk usage is : $DISK_USED%"

if [ $DISK_USED -gt $DISK_LIMIT ]; then
	echo "WARNING : Disk is almost full!"
else
	echo "All good. Disk is healthy."
fi
