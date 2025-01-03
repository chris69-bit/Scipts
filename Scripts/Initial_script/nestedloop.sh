#!/bin/bash

# This script copies files from homedirectory into the webserver directory
# Use SSH for remote dir
# A new directory is created every hour

# Defining variables
PICSDIR=/home/Gaul/Pics
WEBDIR=/var/www/Gaul/webcam

while true;
do
  DATE=$(date +%Y%M%d)
  HOUR=$(date +%H)
  mkdir $WEBDIR/"$DATE"

  while [ $HOUR -ne "00" ]
  do
    DESTDIR=$WEBDIE/"$DATE"/"$HOUR"
    mkdir "$DESTDIR"
    mv $PICDIR/*.jpg "$DESTDIR"/
    sleep 3600
    HOUR=$(date +%H)
  done
done
