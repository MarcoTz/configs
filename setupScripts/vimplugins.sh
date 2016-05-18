#installs vim plugins and exits
#vim and git need to be installed
cd ~/.vim

#install pathogen
mkdir "autoload" "bundle"
git clone "https://github.com/tpope/vim-pathogen.git"
mv "vim-pathogen/autoload/pathogen.vim" "autoload"
rm "vim-pathogen" -rf

#install nerdtree
cd bundle
git clone https://github.com/scrooloose/nerdtree.git
cd ../

#install base16 colorscheme
mkdir colors
cd colors
git clone git://github.com/chriskempson/base16-vim.git
cp "base16-vim/colors/*" ./
rm -rf base16-vim
cd ../
