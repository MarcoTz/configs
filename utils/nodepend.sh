#!/bin/bash
if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
	echo "lists all packages no other packages depend on(pacaur only)"
	echo ""	
	echo "Options:"
	echo "-o, --orphans removes orphans(requires root permissions)"	
	exit
elif [ "$1" == "-o" ] || [ "$1" == "--orphans" ]
then
	pacaur -Rns $(pacaur -Qtdq)
	exit
fi

ignoregrp="base base-devel"
ignorepkg=""
comm -23 <(pacaur -Qqt | sort) <(echo $ignorepkg | tr ' ' '\n' | cat <(pacaur -Sqg $ignoregrp) - | sort -u)
