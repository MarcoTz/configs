#!/bin/bash
ignoregrp="base base-devel"
ignorepkg=""

if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
	echo "lists all packages no other packages depend on"
	echo ""	
	echo "Options:"
	echo "-o, --orphans removes orphans(requires root permissions)"	
	echo "-t, --optional also lists packages that are only optional dependencies"
	exit
elif [ "$1" == "-o" ] || [ "$1" == "--orphans" ]
then
	pacaur -Rns $(pacaur -Qtdq)
	exit
elif [ "$1" == "-t" ] || [ "$1" == "--optional" ]
then
	comm -23 <(pacaur -Qqtt | sort) <(echo $ignorepkg | tr ' ' '\n' | cat <(pacaur -Sqg $ignoregrp) - | sort -u)
	exit
fi

comm -23 <(pacaur -Qqt | sort) <(echo $ignorepkg | tr ' ' '\n' | cat <(pacaur -Sqg $ignoregrp) - | sort -u)
