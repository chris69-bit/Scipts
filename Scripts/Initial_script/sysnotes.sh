#!/bin/bash

# This script mskes an index of important config files, puts them together in
# a backup file and allows for adding comment for each file.

CONFIG=/var/tmp/sysconfig.out
rm "$CONFIG" 2>/dev/null

echo "We are here to save your output on a different location rather the stdout(2) which is usually your monitor"

sleep 1

echo "Output will be saved in $CONFIG"

#create fd 7 with same target as f 0 (saves stdin "value"

exec 7<&0

#Update fd 0 to target file /etc/passwd
exec < /etc/passwd

#Read the first line of /etc/passwd
read rootpasswd

echo "Saving root account info..."
sleep 2
echo "Your root account info:" >> "$CONFIG"
echo $rootpasswd >> "$CONFIG"

#Update fd 0 to target fd 7 target (old fd 0 target); delete fd 7
exec 0<&7 7<&-

echo -n "Enter comment or [ENTER] for no comment: "
read comment; echo $comment >> "$CONFIG"

echo "Saving hosts information..."
sleep 2

#First prepare a hosts file not containing any comments
TEMP="/var/tmp/host.tmp"

cat /etc/hosts | grep -v "^#" > "$TEMP"

exec 7<&0
exec < "$TEMP"

read ip1 name1 alias1
read ip2 name2 alias2

echo "Your local host configuration:" >> "$CONFIG"

echo "$ip1 $name1 $alias1" >> "$CONFIG"
echo "$ip2 $name2 $alias2" >> "$CONFIG"

exec 0<&7 7<&-

echo -n "Enter comment or [ENTER] for no comment: "
read comment; echo $comment >> "$CONFIG"

rm "$TEMP"

