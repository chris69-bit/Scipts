#!/bin/bash

#Looks for existence of a file and gives the information about the existences of the file
#In contrary the first file, this doesnot involve hardcoded values of the file path

file="/usr/bin/$1"

echo "This script will look if your file exists"
#Also checks if its a symbolic link or a directory 

echo "checking...."
sleep 3

if [ -h $file ]
  then 
    echo "This is just a symbolic link"

else
  echo "Well, this might be a regular file or a directory"

fi

echo "The script for inclusion of all the symbolic,regular and directory will be updated soon"
