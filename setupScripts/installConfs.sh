$DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
cd ../configs
ln -s bashrc ~/.bashrc
ln -s vimrc ~/.vimrc
ln -s Xresources ~/.Xresources
ln -s flake8 ~/.config/flake8
