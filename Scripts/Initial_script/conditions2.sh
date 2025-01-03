#!/bin/bash

#This is a hardcoded filename
#Also testing conditional statement in scripting
#Basically the script checks for existence of a file and gives a response

file="/var/log/messages"

echo "Checking for existence of $file, wait..."
sleep 3

if [ -f $file ]
  then
    echo "Found it..!! $file was found"
else
  echo "Sorry, We couldn't file $file"

fi


