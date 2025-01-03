#!/bin/bash

#positional parameters
#This script reads 3 positional parameters and prints them out

POSPAR1="$1"
POSPAR2="$2"
POSPAR3="$3"


if [ -z "$1" ]
then 
  echo "Usage :$0 <three numbers>"
  exit 1
fi

echo "$1 is the first positional parameter,"
echo "$2 is the first positional parameter,"
echo "$3 is the first positional parameter,"

echo "The total number of positional parameters is $#."



