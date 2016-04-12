if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
	echo "Lists all scripts in this directory(bash scripts folder)"
	exit
fi
ls $(dirname "$0") | sed 's/<TAB>/ /'