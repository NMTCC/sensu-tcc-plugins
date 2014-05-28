#!/bin/bash

# return 0 for no device (or if users logged in) and 1 for a attached device
echo "$(hostname).usb.remmovable"

#Check for logged in users
if [[ -n $(users) ]]
then
	exit 0
fi

#Check for USB mass storage
if ! [ $(lsusb -v 2>/dev/null | grep -i binterfaceclass | grep -i mass | wc -l) == 0 ]
then
	exit 1	
fi
exit 0

