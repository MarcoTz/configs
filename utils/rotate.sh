#!/bin/bash

#rotate to normal
if [ "$1" == 0 ] 
then
	xrandr --output eDP1 --rotate normal
fi

#rotate left
if [ "$1" == 1 ]
then
	xrandr --output eDP1 --rotate left
fi

#rotate right
if [ "$1" == 2 ]
then 
	xrandr --output eDP1 --rotate right
fi
