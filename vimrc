syntax on	"enable syntax highlighting
set number	"show line numbers
set tabstop=4	"tabs show as 4 spaces
set showmatch	"highlight matching []{}()
set hlsearch	"highlight search matches
"binds nohlsearch (removes search highlights) to backspace
nnoremap <backspace> :nohlsearch<CR>
"binds folding to space
nnoremap <space> za
set hidden "allows having multiple open files
set smartcase "smart case in searches
set ruler "show cursor position
set wildmenu
set wildmode=longest,list "turns on tab autocompletion for file names
set mouse=a "enable mouse
set autoindent
