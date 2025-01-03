#!/bin/bash

#A string comparison script, the basic stuff

echo "We will first see if you are previledged to run stuff in this system"
echo "Wait..."

sleep 3

if [ "$(whoami)" != 'root' ]
  then
    echo "womp!! womp!! womp!! You have no permission to run $0 as non-root user"
fi
