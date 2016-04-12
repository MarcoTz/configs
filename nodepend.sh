if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
	echo "lists all packages no other packages depend on(pacman only)"
	exit
fi

ignoregrp="base base-devel"
ignorepkg=""
comm -23 <(pacman -Qqt | sort) <(echo $ignorepkg | tr ' ' '\n' | cat <(pacman -Sqg $ignoregrp) - | sort -u)