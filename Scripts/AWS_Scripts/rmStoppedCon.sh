#!/bin/bash
# Script list stopped containers and stops them

STOP=$(docker ps -a | awk 'NR > 1 {print $1}')

for i in $STOP
do 
 docker rm $i 2> /dev/null
done

