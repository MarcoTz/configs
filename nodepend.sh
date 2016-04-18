if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
	echo "lists all packages no other packages depend on(pacman only)"
	echo ""	
	echo "Options:"
	echo "-o, --orphans removes orphans first(requires root permissions)"	
	exit
elif [ "$1" == "-o" ] || [ "$1" == "--orphans" ]
then
	pacman -Rns $(pacman -Qtdq)
fi

ignoregrp="base base-devel"
ignorepkg=""
comm -23 <(pacman -Qqt | sort) <(echo $ignorepkg | tr ' ' '\n' | cat <(pacman -Sqg $ignoregrp) - | sort -u)
