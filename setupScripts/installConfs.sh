DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/../
cd $DIR

#removes old config files if -f or --force is present
if [ "$1" == "-f" ] || [ "$1" == "--force" ]
then 
	rm ~/.bashrc
	rm ~/.vimrc
	rm ~/.Xresources
	rm ~/.config/flake8
fi

if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
	echo "installs configs in config directory of this repo"
	echo "options:"
	echo "-h, --help print this help and exit"
	echo "-f, --force remove the configs first if they exist"
fi

ln -s $DIR/configs/bashrc ~/.bashrc
ln -s $DIR/configs/vimrc ~/.vimrc
ln -s $DIR/configs/Xresources ~/.Xresources
xrdb ~/.Xresources
ln -s $DIR/configs/flake8 ~/.config/flake8

#install crontab
fcrontab $DIR/cron/crontab.cron 
