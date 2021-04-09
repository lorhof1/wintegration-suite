#!/bin/bash
#This script moves the windows user data to the linux system
#Usage: bash winmove.sh [windows partition] [user]
#Example: bash winmove.sh /dev/sda2 admin
echo "winmove script by lorhof1 (part of wintegration suite) | github.com/lorhof1/wintegration-suite"

#check if enough arguments provided and give instructions if needed
if [ "$1" = "" ]
then
  echo "missing argument"
  echo "Usage: bash winmove.sh [windows partition] [user]"
  echo "Example: bash winmove.sh /dev/sda2 admin"
  exit
fi

#save user directory before elevation
cd ~/
target="$(pwd)"

#gain root privileges
echo "Please enter your Password"
sudo su

#mount win drive
mkdir "/mount/winmove-mountpoint"
mount "$1" "/mount/winmove-mountpoint"

#save source directory
source="/mount/winmove-mountpoint/users/$2/"

#move stuff
mv -R "$source/Downloads" "$target/Downloads"
mv -R "$source/Documents" "$target/Documents"
mv -R "$source/Desktop" "$target/Desktop"
mv -R "$source/Music" "$target/Music"
mv -R "$source/Pictures" "$target/Pictures"
mv -R "$source/Videos" "$target/Videos
