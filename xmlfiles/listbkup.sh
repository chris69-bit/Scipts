#!/bin/bash

#This is a simple file that backsup xml files that i just created, the files contain nothing

echo "Hello $USER, let's make backup of your xml files."
echo "Starting..."
sleep 3

ls *.xml > list1

for i in `cat list1`;
do
  cp "$i" "$i".bak ;
done

ls -al 
