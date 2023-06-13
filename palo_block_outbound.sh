#!/bin/bash

#Specify folder 
path=./
filename=palo_outbound.txt

#Check file exist or not
if [[ ! -e $path/$filename ]]; then 
	touch $path/$filename
fi

#Adding IP to blocklist
if grep -wq "$1" $path/$filename; then
	echo "IP Exist, skipping to add IP"
else 
	echo $1 >> $path/$filename
	echo "Added IP: $1"
fi 
