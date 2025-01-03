#!/bin/bash

# This script simply tells information about a file and a directory.

echo "Hello $USER, let's give you information about your file/directory status"
echo "Please input the file/directory and press ENTER: "
read file

sleep 3

if [ -e $file ]
then
  if [ -f $file ]
  then
    echo "$file is a regular file"
  fi

  if [ -d $file ]
  then
    echo "$file is a directory"
  fi

  if [ -r $file ]
  then
    echo "$file is a readable file"
  fi

  if [ -w $file ]
  then
    echo "$file is a writable file"
  fi

  if [ -x $file ]
  then
    echo "$file is executable"
  fi
else
  echo "The file doesnot exist"
fi
