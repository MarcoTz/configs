#installs vim plugins and exits
#vim and git need to be installed
mkdir ~/.vim
cd ~/.vim

#install pathogen
mkdir "autoload" "bundle"
git clone "https://github.com/tpope/vim-pathogen.git"
mv "vim-pathogen/autoload/pathogen.vim" "autoload"
rm "vim-pathogen" -rf

#install nerdtree
cd bundle
git clone https://github.com/scrooloose/nerdtree.git

#install syntastic
#needs syntax checkers to work
git clone https://github.com/scrooloose/syntastic.git
cd ../

#install base16 colorscheme
git clone git://github.com/chriskempson/base16-vim.git
mv "base16-vim/colors/" ./
rm -rf base16-vim
cd ../

