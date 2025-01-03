#!/bin/bash

#Rectangle area calculation
#for non-hardcoded input values, we assign positional parameters

num1=$1
num2=$2

Results=$((num1 * num2))

if [ -z "$1" ]
then
  echo "Usage: $0 <two numbers>"
  exit 1
fi

echo "The Area of your rectangle is..."

sleep 1

echo $Results


