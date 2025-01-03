#!/bin/bash

#This is also a simple while loop script but it used to check for existence of afile
echo "what is your name? "
read name

echo "Hello $name, how are you we want to check for existance of a file in your computer"

echo "Checking..."
sleep 3

while [ -f ~/afile.sh ]
do
  echo "As of $(date) the file exits"
sleep 5
done

echo "As of $(date).The file no longer exists"


