#!/bin/bash

#rotate to normal
if [ "$1" == 0 ] 
then
	xrandr --output eDP1 --rotate normal
	xinput --set-prop "ATML1000:00 03EB:8C3C" "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1
fi

#rotate left
if [ "$1" == 1 ]
then
	xrandr --output eDP1 --rotate left
	xinput --set-prop "ATML1000:00 03EB:8C3C" "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1
fi

#rotate right
if [ "$1" == 2 ]
then 
	xrandr --output eDP1 --rotate right
	xinput --set-prop "ATML1000:00 03EB:8C3C" "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
fi
