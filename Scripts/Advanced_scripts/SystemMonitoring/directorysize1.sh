#!/bin/bash

# This script checks the disk usage of a directory
# This is the second version of the script

echo "Hello $USER, let's check the disk usage of a directory of choice"
echo "let's begin"
sleep 3
num=$1

if [ -z $1 ]
then
  echo "Error..Usage: $0 </directory>"
  exit 1
fi

dirsize=$(du -sh $num 2> error.log)

echo "The disk usage for this directory is $dirsize"



