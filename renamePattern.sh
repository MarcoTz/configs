USAGE="Usage: renamePattern.sh [OPTIONS] SEARCHSTR REPLACESTR"
MOREINFO="try 'renamePattern.sh -h' for more information"
if [ "$#" = "0" ] || [ "$#" = "1" ]
then
	echo "Not enough arguments"
	echo $USAGE
	echo $MOREINFO
	exit
fi

while [ "$#" -ne "2" ]
do
	case $1 in
		"-h"| "--help")
		echo $USAGE
		echo "Search for occurences of SEARCHSTR in filenames in current folder and subfolders and replace it with REPLACESTR"
		echo "Example: renamePattern.sh ' ' '_'"
		echo ""
		echo "Options:"
		echo "-h, --help	Print this help and exit"
		echo "-D, --directory	The directory in which to search for files"
		echo "-d, --depth	max depth to search for files"
		exit
		;;
		"-D"| "--directory")
		SEARCHDIR=$2
		shift
		;;
		"-d"|"--depth")
		SEARCHDEPTH=$2
		shift
		;;
		*)
		echo "renamePattern: unknown argument $1"
		echo $USAGE
		echo $MOREINFO
		exit
	esac
	shift
done
SEARCHSTR=$1
shift
REPLACESTR=$1
shift
find . -depth $SEARCHDEPTH -name "*$SEARCHSTR*" | while IFS= read -r f ; do mv -i "$f" "$(dirname "$f")/$(basename "$f"|tr "$SEARCHSTR" "$REPLACESTR")" ; done
