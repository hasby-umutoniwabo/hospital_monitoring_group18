#!/bin/bash

group_number=18
archived_dir="archived_logs_group$group_number"
REMOTE_USER=93a4f8bd6078
REMOTE_HOST=93a4f8bd6078.51efc529.alu-cod.online
REMOTE_PATH=/backup

mkdir -p "$archived_dir"
mv heart_rate_log.txt_* "$archived_dir/" 2>/dev/null

if [ $? -ne 0 ]; then
	echo "Error: Failed to move archived log files. Check if they exist."
	exit 1
fi

scp -r "$archived_dir/" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH"

if [ $? -eq 0 ]; then
	echo "Backup completed successfully."
else
	echo "Error during backup. Check your connection and paths."
fi
