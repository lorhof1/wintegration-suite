#!/bin/bash
#This script moves the windows user data to the linux system
#Usage: bash winmove.sh [windows partition] [user]
#Example: bash winmove.sh /dev/sda2 admin
if [ "$1" = "" ]
then
  echo "missing argument"
  echo "Usage: bash winmove.sh [windows partition] [user]"
  echo "Example: bash winmove.sh /dev/sda2 admin"
  exit
fi

