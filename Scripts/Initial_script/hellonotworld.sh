#!/bin/bash

#This a script which says hi to only me

cat << EOF

Hey chris, hope you are having an amamzing day
what is on your mind today
Please feel free to share.
EOF

echo "So chris, give me a number"
read number

if [ "$number" -gt 12 -a "$number" -lt 98 ]
then
  echo "This is a lucky number"
else
  echo "You are unlucky"
fi 
