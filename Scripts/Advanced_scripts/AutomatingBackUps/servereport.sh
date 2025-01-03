#!/bin/bash

# This script gives a detailed information about servers

echo "Hello $USER, this is the detailed information about the server"
echo "Processing..."
sleep 3

# Display date and time
echo "As of $(date)..."
echo "===================="


# Display system uptime and current logged in users
echo "Uptime:"
uptime
echo "Current loggged in Users"
w
echo "===================="

#Display last 3 logins and recent log activities
echo "last logins: "
last_login=$(last -a | head -3)
echo "$last_login"
recent_log=$(journalctl | head -1 | cut -c 1-12)
echo "The recent log activities are as from: $recent_log"
echo "===================="

# Display the free disk and free memory
echo "The available disk space: "
disk_space=$(df -h | xargs | awk '{print $11"/"$9}')
mem_space=$(free -m | xargs | awk '{print $17"/"$8 "MB"}')
echo "$disk_space"
echo "The available memory space: "
echo "$mem_space"
echo "===================="

# Show system utilization and most resource-intensive process
echo "Utilization and most intensive process: "
top -b | head -10 | tail -4
echo "===================="

#Dispaly open ports on local machine
echo "The open ports in your system are as follows: "
nmap -T4 127.0.0.1
echo "===================="


# Display current network connections
echo "Current connections"
ss -s
echo "===================="

# Display system statistics
echo "System statistics(vmstat)"
vmstat 1 5
echo "===================="

