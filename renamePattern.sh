USAGE="Usage: renamePattern.sh [OPTIONS] SEARCHSTR REPLACESTR"
MOREINFO="try 'renamePattern.sh -h' for more information"

if [ "$1" = "-h" ] || [ "$1" = "--help" ]
then
	echo $USAGE
	echo "Search for occurences of SEARCHSTR in filenames in current folder and subfolders and replace it with REPLACESTR"
	echo "Example: renamePattern.sh ' ' '_'"
	echo ""
	echo "Options:"
	echo "-h, --help	Print this help and exit"
	exit
elif [ "$#" = "1" ] || [ "$#" = "0" ]
then
	echo "not enough arguments"
	echo $USAGE
	echo "see 'renamePattern.sh -h' for more information"
fi

SEARCHSTR=$1
shift
REPLACESTR=$1
shift
find . -depth $SEARCHDEPTH -name "*$SEARCHSTR*" | while IFS= read -r f ; do mv -i "$f" "$(dirname "$f")/$(basename "$f"|tr "$SEARCHSTR" "$REPLACESTR")" ; done
