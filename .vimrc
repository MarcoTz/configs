filetype plugin on	"enable filtype specific highlighting
filetype indent plugin on "enable filetype specific indenting
syntax on	"enable syntax highlighting
set number	"show line numbers
set mouse=a	"enable mouse
set tabstop=4	"tabs show as 4 spaces
set showmatch	"highlight matching []{}()
set hlsearch	"highlight search matches
"binds nohlsearch (removes search highlights) to backspace
nnoremap <backspace> :nohlsearch<CR>
set foldenable	"enables folding
"binds folding to space
nnoremap <space> za
set foldmethod=indent "folds based on indents
set autoindent "automatically indents
set hidden "allows having multiple open files
set smartcase "smart case in searches
set ruler "show cursor position
set cmdheight=2 "commands have two lines
