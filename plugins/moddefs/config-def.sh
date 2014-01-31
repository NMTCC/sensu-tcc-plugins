#!/bin/bash

if [ $# != 2 ]
then
	echo "usage ./config-def.sh <channel> <name>"
	exit 1
fi

NAME="$1_$2"

echo "Check of Metric(check:metric)"
read TYPE
echo Command to execute(quotes breaks this)
read CMD
echo Enter the Interval
read INTERVAL

sed template.json -e s/NAME/"$NAME"/ -e s/TYPE/"$TYPE"/ -e s/CMD/"$CMD"/ -e s/INTERVAL/"$INTERVAL"/ -e s/CHANNEL/"$1"/>"$1_$2.json"
