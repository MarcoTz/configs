if [[ "$1" = "-h"  ]] || [[ "$1" = "--help" ]]
then
	echo "removes all spaces in files in folder and subfolder, replacing them with _"
	exit
fi

find . -name "* *" | while IFS= read -r f ; do mv -i "$f" "$(dirname "$f")/$(basename "$f"|tr " " "_")" ; done
