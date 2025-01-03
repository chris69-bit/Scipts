#!/bin/bash
MINPARAMS=10

echo "The name of the script is \"$0\"."

echo "The name of this script is \"basename $0\"."

if [ -n "$1" ]
then 
 echo "Parameter #1 is $1"
fi

if [ -n "$2" ]
then
 echo "Parameter #2 is $2"
fi

if [ -n "$3" ]
then
 echo "Parameter #3 is $3"
fi

echo "All the command-line parameters are: "$*"" 
if [ $# -lt "$MINPARAMS" ]
then
echo
echo "This script needs at least $MINPARAMS command-line arguments!"
fi
