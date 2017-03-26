DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/../
cd $DIR

#removes old config files if -f or --force is present
if [ "$1" == "-f" ] || [ "$1" == "--force" ]
then 
	rm ~/.bashrc
	rm ~/.vimrc
	rm ~/.Xresources
	rm ~/.i3/config
	rm ~/.i3/workspace_msg.json
	rm ~/.i3/workspace_msg2.json
	rm ~/.i3/workspace_notes.json
	rm ~/.i3/conky.sh
	rm ~/.config/conkyrc
	rm ~/.unison/default.prf
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
mkdir ~/.unison
cp $DIR/configs/unison.prf ~/.unison/default.prf
mkdir ~/.i3
ln -s $DIR/configs/i3 ~/.i3/config

ln -s $DIR/configs/workspaces/msg.json ~/.i3/workspace_msg.json
ln -s $DIR/configs/workspaces/msg2.json ~/.i3/workspace_msg2.json
ln -s $DIR/configs/workspaces/notes.json ~/.i3/workspace_notes.json

ln -s $DIR/configs/conky.sh ~/.i3/conky.sh
mkdir ~/.config
ln -s $DIR/configs/conkyrc ~/.config/conkyrc
xrdb ~/.Xresources

