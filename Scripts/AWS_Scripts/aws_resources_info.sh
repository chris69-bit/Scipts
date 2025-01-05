#!/bin/bash

# This script gives information about various resources used in AWS
# The AWS commands are form the AWS CLI documentation (https://awscli.amazonaws.com/v2/documentation/api/latest/reference/index.html)

###############################################
# Author: chris****@gmail.com
#
# Team: DevOps
# 
# Date: 05.01.2025
###############################################

#set -x # Runs the script in debug mode
set -e  # Exists the script incase of an error

echo "Prints the list of IAM Users"
aws iam list-users
echo "That is all the IAM Users in the account"
sleep 2

echo "Listing all user owned buckets"
aws s3 ls
echo "All owned buckets"
sleep 2

echo "To describe your Availability Zones"
aws ec2 describe-availability-zones



