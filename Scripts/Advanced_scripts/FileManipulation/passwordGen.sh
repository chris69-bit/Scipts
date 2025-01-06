#!/bin/bash

#################################
# Author: chris*****@gmail.com
#
# Date: 06.01.2025
#
# Team: DevOps
#################################

# This script helps in generating password

echo "Hello $USER, this is a top tier password generator, very secure."
sleep 2

echo "Please give the minimun length of the password: "
read PASS_LEN

for i in $(seq 1 3);
do
  openssl rand -base64 48 | cut -c1-$PASS_LEN
done
echo ""

echo "Choose the password of your liking"
