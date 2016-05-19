if [[ "$1" = "-h"  ]] || [[ "$1" = "--help" ]]
then
	echo "removes all spaces in files in current folder, replacing them with _"
	exit
fi

find . -maxdepth 1 -name "* *" | while IFS= read -r f ; do mv -i "$f" "$(dirname "$f")/$(basename "$f"|tr " " "_")" ; done
