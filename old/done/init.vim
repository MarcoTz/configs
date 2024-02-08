syntax on
set tabstop=4
set showmatch
set hlsearch
set number
set mouse=a
set autoindent
set incsearch
map <BS> :nohlsearch<CR>
map <F2> <plug>(coc-codeaction-cursor)
map <F3> <plug>(coc-definition)
au BufRead,BufNewFile *.sage set filetype=python
