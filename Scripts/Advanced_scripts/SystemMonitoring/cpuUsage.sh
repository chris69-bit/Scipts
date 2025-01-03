#!/bin/bash

# This script checks cpu usage and if the return value is above a certain threshold and email is sent out to the concerned persons
EMAIL=chrisiouda9@gmail.com
MAX=90
echo "Hello $USER, let's see your cpu usage and if it exceeds 90%"
echo "Checking..."
sleep 3

get_usage(){
  local cpu_line=($(grep "cpu" /proc/stat))
  local user=${cpu_line[0]}
  local nice=${cpu_line[1]}
  local system=${cpu_line[2]}
  local idle=${cpu_line[3]}
  local iowait=${cpu_line[4]}
  local irq=${cpu_line[5]}
  local softirq=${cpu_line[6]}
  
  local total=$((cpu_line + user + nice + system + idle + iowait + irq + softirq))
  local active=$((total - idle - iowait))
  
  echo "$active $total"

}

initial=($(get_usage))
initial_active=${initial[0]}
initial_total=${initial[1]}

sleep 2

final=($(get_usage))
final_active=${final[0]}
final_total=${final[1]}

diff_active=$((final_active - initial_active))
diff_total=$((final_total - initial_total))


USE=$((100 * diff_active/diff_total))

if [ $USE -gt $MAX ]
then
  echo "Percentage usage: $USE " | mail -s "Running out of CPU power" $EMAIL
  exit 1
else
  echo "Your Percentage Use is: $USE%, your cpu power is safe"
fi





