#!/bin/bash
#Defining log file

log_file="heart_rate_log.txt"

#check if the log file exitst
if [ -f "$log_file" ]; then

	#Get the current timestamp
	timestamp=$(date "+%Y%m%d_%H%M%S")

	#create new log file
	new_log_file="heart_rate_log.txt_${timestamp}"

	#Rename existing logfile
	mv "$log_file" "$new_log_file"

	#creating empty log file for future logging
	touch "$log_file"

	echo "Log archived as $new_log_file and a new log file has been created."

else
	echo "Log file $log_file does not exist."
fi
