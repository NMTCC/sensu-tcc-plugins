#!/bin/bash

if [ $# != 1 ]
then
	echo "usage: ./add-all-defs.sh <channel>"
	exit 1
fi

# all the checks
for FILE in `ls "subplugins/$1" | grep -E "^check"`
do
	NAME=`echo $FILE | cut -f 1 -d"."`
	echo -e "check\n\/etc/sensu/plugins/$FILE\n20" | bash config-def.sh "$1" "$NAME" >/dev/null
done

# all the metrics
for FILE in `ls "subplugins/$1" | grep -E "metric.?\."`
do
        NAME=`echo $FILE | cut -f 1 -d"."`
  	echo -e "metric\n\/etc/sensu/plugins/$FILE\n20" | bash config-def.sh "$1" "$NAME" >/dev/null
done
