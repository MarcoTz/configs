syntax on 

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

set showmatch
set hlsearch
set smartcase 
set incsearch

set number
set mouse=a

" turn off header for :Explore
let g:netrw_banner = 0

map <BS> :nohlsearch<CR>
map <Tab> :Explore<CR>
map <F5> :w<CR>:!./%<CR>
map <F4> :w<CR>:!pdflatex %<CR>

" Coc Bindings
map <F2> :call CocCaction('jumpDefinition')<CR>
map <F3> :call CocCaction('codeAction')<CR>
map <C-m> :call CocAction('diagnosticNext')<CR>
map <C-n> :call CocAction('diagnosticPrevious')<CR>
