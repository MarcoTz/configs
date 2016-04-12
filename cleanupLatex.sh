if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
	echo "deletes all files left over by latex (*.aux and *.log) in current directory"
	exit
fi

for file in $(find . -maxdepth 1 -name "*.aux" -o -name "*.log");
do
	rm $file
done