#!/bin/bash

echo 'Which repo is this module in(community:c/tcc:t)'
read REPO
if [ $REPO = "c" ]
then 
	FROM="community"
else
	FROM="tcc"
fi

echo 'What is the path to the plugin(Ex:"security/open-ports-metric.sh")'
read PLUGIN_PATH

if [ $(echo "$PLUGIN_PATH" | grep metric | wc -l) == 1 ]
then
	TYPE=metric
else
	TYPE=check
fi

echo 'Enter the arguments for the command'
read ARGS

if ! [ $(echo "$ARGS" | wc -c) == 1 ]
then
	ARGS=" $ARGS"
fi


# TODO; support multiple channels
echo 'What channel should this run on'
read CHAN

echo 'What interval should this check run at(in seconds)'
read INT

NAME=$(echo "$PLUGIN_PATH" | cut -f 2 -d"/" | cut -f 1 -d".")

sed -e s/FROM/"$FROM"/ -e s,PATH,"$PLUGIN_PATH", -e s/TYPE/"$TYPE"/ -e s#ARGS#"$ARGS"# \
	-e s/INT/"$INT"/ -e s/NAME/"$NAME"/ -e s/CHAN/"$CHAN"/ template.pp 


