"" Core
set encoding=utf-8
set nocompatible
call pathogen#infect()

"" Style
set nu
set nowrap
syntax enable         
colorscheme wombat256     
set colorcolumn=80        
set backspace=indent,eol,start
set tabstop=2 shiftwidth=2 expandtab
set statusline=%t[%{strlen(&fenc)?&fenc:'none'}]%=Col:%c,Line:%l

"" Searching
set hlsearch          
set incsearch         
set ignorecase

"" NERDTree
let g:NERDTreeDirArrows=0
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
