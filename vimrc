call pathogen#infect()

"" Core
set encoding=utf-8
set nu
set nowrap
set tabstop=4 shiftwidth=4
set backspace=indent,eol,start
set statusline=%t[%{strlen(&fenc)?&fenc:'none'}]%=Col:%c,Line:%l

"" Style
syntax enable         
set colorcolumn=80        
set synmaxcol=180
colorscheme wombat256     

"" Searching
set hlsearch          
set incsearch         
set ignorecase

"" Filetype
filetype on
filetype indent on
filetype plugin on

"" Ruby
:imap \ <C-x><C-o>

"" NERDTree
let g:NERDTreeDirArrows=0
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
