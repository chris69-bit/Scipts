#!/bin/bash

# This is an improvement from the cleanup1 script
# Use a variable for the directory

LOG_DIR=/var/log

cd $LOG_DIR

cat /dev/null > message
cat /dev/null > wtmp

echo "Logs cleaned up"



