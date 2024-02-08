#!/bin/bash
if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
	echo "kills all .exe files"
	exit
fi

ps -A | grep exe | awk '{print $1}' | sudo xargs kill -9
