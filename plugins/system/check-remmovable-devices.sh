#!/bin/bash

# return 0 for no device and 1 for a attached device
echo "$(hostname).usb.remmovable"

if ! [ $(lsusb -v 2>/dev/null | grep -i binterfaceclass | grep -i mass | wc -l) == 0 ]
then
	exit 1	
fi
exit 0

