USAGE="Usage: renamePattern.sh SEARCHSTR REPLACESTR"
MOREINFO="try 'renamePattern.sh -h' for more information"

if [ "$1" = "-h" ] || [ "$1" = "--help" ]
then
	echo $USAGE
	echo "Search for occurences of SEARCHSTR in filenames in current folder and replace it with REPLACESTR"
	echo "Example: renamePattern.sh 'a' 'b'"
	echo ""
	echo "doesn't work if files have spaces"
	echo "Options:"
	echo "-h, --help	Print this help and exit"
	exit
elif [ "$#" = "1" ] || [ "$#" = "0" ]
then
	echo "not enough arguments"
	echo $USAGE
	echo "see 'renamePattern.sh -h' for more information"
	exit
fi

SEARCHSTR=$1
shift
REPLACESTR=$1
shift
for file in $(find . -maxdepth 1);
do
mv $file $(echo $file | sed "s/$SEARCHSTR/$REPLACESTR/"); 
done

