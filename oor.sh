#!/bin/bash

# TO take the host OOR

# usage filename.sh hostname

# decalring a function
error_throw () {
  	echo "Please enter the correct name"
	echo "usage : filename.sh hostname"
}



# Script start

hostname=$1

# so we can use 2 conditions to login into the host

# first case

if [ "$1" == "" ]
then
	error_throw  # calling function
else
	yinst ssh -t $1 " echo "hostname"
	echo "Taking host OOR"
	echo "Please enter the reason"
	read reason
	sudo bash -l /home/y/bin/oorTool -op add -h $1 -c "$reason" # bash -l is telling the sript to find oortool "
fi



# 2nd case

	ssh -t $1 "sudo bash -l /home/y/bin/oorTool -op add -h $1"   # if u want multiple command sit wont work !!!!
