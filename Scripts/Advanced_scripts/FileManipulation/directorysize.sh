#!/bin/bash

# This script gives the takes a directory as an input then gives its size
# This is 1 of the 2 methods i'd like to use

echo "Hello $USER, we will check the size of a directory you provide"
sleep 2
echo "Please input the directory here: "
read dir

dirsize=$(du -sh $dir 2>> dirsize.log)

if [ -d $dir ] 
then
  echo "That was a valid directory"
else
  echo "The directory you provided was not valid"
  exit 1
fi

echo "The size of disk usage in the directory is $dirsize"

