#!/bin/bash
# This script takes input and then compresses them, the user selects the compressor to uses from a selected option

# Declare a positional parameter
FILE=$1

# Confirm indeed there is a positional parameter
if [ -z "$1" ]
then
  echo "Error!! Usage: $0 <file>"
  exit 1
fi

# Confirm if the input is a indeed a file
if [ ! -f $1 ]
then 
  echo "Error, the input, $1 ,was not a valid file"
  exit 1
fi

# Giving user a little bit detail about the script
echo "Hello $USER, we are here to see the options you have for compressing your file"
echo "checking..."
sleep 3


echo "Here is a list of available options"
sleep 2
echo "1) - gzip"
echo "2) - bzip2"
echo "3) - compress"
echo "4) - zip"

# Read user's choice
echo "Enter your choice(1-4): "
read choice

#compress the file depending on the user's choice

case $choice in
  1)
    gzip "$FILE"
    echo "$FILE has been compressed using gzip."
    ;;
  2)
    bzip2 "$FILE"
    echo "$FILE has been compressed using bzip2."
    ;;
  3)
    compress "$FILE"
    echo "$FILE has been compressed using compress."
    ;;
  4)
    zip "$FILE"
    echo "$FILE has been compressed using zip."
    ;;
  *)
    echo "Invalid choice. No compression performed."
esac
