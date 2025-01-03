#!/bin/bash
#############################
# Author: Chris Odhiambo
# Date: 02/01/2025
#
# This script outputs node health
# Version: v1
#############################

set -x #debug mode
set -e #exit on error
set -o pipefail # exits when the pipe command fails

df -h

ps -ef | grep postgres | awk '{print $1, $10}'

