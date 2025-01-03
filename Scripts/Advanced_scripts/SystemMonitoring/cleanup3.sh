#!/bin/bash

# This is an improved version of cleanup2

# Create  variables for the processes
LOG_DIR=/var/log #For the directory change
ROOT_UID=0       #Only users with $UID 0 have root priviledges
LINES=50         #Default number of lines saved
E_XCD=86         #Can't change directories
E_NOTROOT=87     #Non-root exit error

# Run as root
if [ $UID -ne $ROOT_UID ]
then
  echo "Must be root user to run this script."
  exit $E_NOTROOT
fi

if [ -n "$1"]
#Test whether command-line argument is present (non-empty)
then
  lines=$1
else
  lines=$LINES #Default if not specified
fi

cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ]
then
  echo "Can't change to $LOG_DIR."
  exit $E_XCD
fi

tail -n $lines messages > mesg.temp # Save last section of message log file.
mv mesg.temp messages
# Rename it as system log file.
# cat /dev/null > messages
#* No longer needed, as the above method is safer.
cat /dev/null > wtmp # ': > wtmp' and '> wtmp' have the same effect.
echo "Log files cleaned up."
# Note that there are other log files in /var/log not affected
#+ by this script.
exit 0
