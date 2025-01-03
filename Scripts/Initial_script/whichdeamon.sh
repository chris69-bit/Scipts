#!/bin/bash

#This script checks for the deamon used by the system

echo "Let's see which deamon is running in your system"
sleep 2

echo "please wait as we fetch the relevant information"
echo "fetching..."

sleep 3

if ps -aux | grep -v grep | grep httpd >> /dev/null
then
  echo "Your system is running on httpd"
else
  echo "Sorry, httpd ain't it"
fi

echo "Let's look at another location"
echo "Fetching..."
sleep 3

if ps -aux | grep -v grep | grep init >> /dev/null
then 
  echo "Your system is running on init"
else 
  echo "This also ain't it"
fi
