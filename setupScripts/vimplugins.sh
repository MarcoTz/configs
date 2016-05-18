#installs vim plugins and exits
#vim and git need to be installed
cd ~/.vim

#install pathogen
mkdir "autoload" "bundle"
git clone "https://github.com/tpope/vim-pathogen.git"
mv "vim-pathogen/autoload/pathogen.vim" "autoload"

#install nerdtree
cd bundle
git clone https://github.com/scrooloose/nerdtree.git
cd ../
