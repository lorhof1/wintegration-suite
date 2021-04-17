#!/bin/bash
#This script starts a parallel installed windows os.
#Usage: bash winstart.sh
#Example: bash winstart.sh

echo "winstart script by lorhof1 (part of wintegration suite) | github.com/lorhof1/wintegration-suite"
echo "Please enter your Password"
sudo su
grub-set-default $win
update-grub
reboot
