#!/bin/bash

# This script tells time and date and users logged in 

echo "This script was initiated at $(date)."
sleep 2
echo "This are the logged in users."
w
echo "The system was up during the following duration"
uptime

echo "Just to brag let me do this, inform you about cpu use during $(date)"
cpuUse
