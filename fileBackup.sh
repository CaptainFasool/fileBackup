#!/bin/bash

dirPath=$1
if [[ -z "$dirPath" ]]; then
	echo "You need to specify a directory path."
	exit 1
fi

tar -czvf /home/faisal/Backups/backup_$(date +%d-%m-%Y-%H:%M:%S).tar.gz "$dirPath"
echo "Backup saved."

find /home/faisal/Backups -type f -mtime +7 -delete
