#!/bin/bash
#installs vim plugins and exits
#vim and git need to be installed
mkdir ~/.vim
cd ~/.vim

#install pathogen
mkdir "autoload" "bundle"
git clone "https://github.com/tpope/vim-pathogen.git"
mv "vim-pathogen/autoload/pathogen.vim" "autoload" -f 
rm "vim-pathogen" -rf


#install base16 colorscheme
mkdir colors
cd colors
git clone git://github.com/chriskempson/base16-vim.git base16
mv base16/colors/*.vim .
rm -rf base16
cd ../

