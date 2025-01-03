#!/bin/bash

# This script creates a backup of our home directory

# Making the variables

: *
echo "Hello $USER, we are about to make a backup of the home directory."
sleep 3

HOMEDIR=/home/chris
DESTDIR=/var/backups

#mkdir -p $DESTDIR

if [ ! -z $1 ]
then
 echo "Error...Usage : $0 <no arguments>"
 exit 1
fi

DISKUSAGE=$(du -sh $HOMEDIR)
DISKUSAGEDEST=$(du -sh $DESTDIR)

if [ "$DISKUSAGE" != "$DISKUSAGEDEST" ]
then
  echo "ERROR!! limited storage space in $DESTDIR"
else
  echo "The destination has enough disk space"
fi*

