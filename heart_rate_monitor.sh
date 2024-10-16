#!/bin/bash
#Prompt asking device name

read -p "Enter the device name (e.g., 'Monitor_A','Monitor_B'):" device_name

#loop for logging and generate random heart rate

while true; do 
	heart_rate=$((RANDOM % 41 + 60))
	timestamp=$(date "+%Y-%m-%d %H:%M:%S")
	echo "$timestamp  $device_name $heart_rate " >> heart_rate_log.txt
	sleep 1
     done

nohup $0 &
echo "PID: $!"
