" This must be first, because it changes other options as side effect
set nocompatible


filetype plugin indent on " use auto-indent as specified in filetype file
autocmd filetype python set number " show line numbers or python files
autocmd filetype python set expandtab " expand tabs to spacs for python
autocmd filetype python set list  " displays non-print chars for python

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"set mouse=a

set tabstop=4                   " a tab is four spaces
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set smartcase                   " ignore case if search pattern is all lowercase,
                                "    case-sensitive otherwise

set nolist			" don't show non-print chars by default
set listchars=tab:>.,trail:.,extends:#,nbsp:. " set non-print chars to show

" Change the mapleader from \ to ,
let mapleader=","
let maplocalleader="\\"

" Toggle show/hide invisible chars
nnoremap <leader>l :set list!<cr>

" Toggle line numbers
nnoremap <leader>N :setlocal number!<cr>

" load better GUI colorscheme
"colors murphy
