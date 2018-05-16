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
	echo "-ot, --allorphans removes all orphans including packages that are optional dependencies"
	echo "-lo, --listorphans lists orphans"
	echo "-lot --listallorphans lists all orphans including packages that are optional dependencies"
elif [ "$1" == "-o" ] || [ "$1" == "--orphans" ]
then
	aurman -Rns $(aurman -Qtdq)
elif [ "$1" == "-t" ] || [ "$1" == "--optional" ]
then
	comm -23 <(aurman -Qqtt | sort) <(echo $ignorepkg | tr ' ' '\n' | cat <(aurman -Sqg $ignoregrp) - | sort -u)
elif [ "$1" == "-ot" ] || [ "$1" == "--allorphans" ]
then
	aurman -Rns $(aurman -Qttdq)
elif [ "$1" == "-lo" ] || [ "$1" == "--listorphans" ]
then 
	aurman -Qtdq
elif [ "$1" == "-lot" ] || [ "$1" == "--listallorphans" ]
then 
	aurman -Qttdq
else
	comm -23 <(aurman -Qqt | sort) <(echo $ignorepkg | tr ' ' '\n' | cat <(aurman -Sqg $ignoregrp) - | sort -u)
fi
