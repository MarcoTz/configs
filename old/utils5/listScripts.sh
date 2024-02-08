if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
	echo "Lists all scripts in this directory(bash scripts folder)"
	exit
fi
find $(dirname "$0") -name "*.sh" | sed 's_.*/__'
