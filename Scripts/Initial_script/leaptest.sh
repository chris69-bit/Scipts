#!/bin/bash
# This script will test if we're in a leap year or not

year=$1

if [ -z "$1" ]
then
  echo "Invalid usecase, USE: $0 <year>"
  exit 1
fi


if (( ("$year" % 400) == "0" )) || (( ("$year" % 4 == "0") && ("$year" % 100 != "0") )); then
  echo "This is a leap year. Don't forget extra day is always a lucky day"
else
  echo "This is not a leap year."

fi
