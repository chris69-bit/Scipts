#!/bin/bash

# This script cleans up the /var/log
# Should run as root

# change directory to the /var/log
cd /var/log

cat /dev/null > messages
cat /dev/null > wtmp

echo "Log files cleaned up."

