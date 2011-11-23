set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle-- required! 
Bundle 'gmarik/vundle'

" my Bundles
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on     " required! 

set background=dark
set t_Co=16
let g:solarized_visibility =  "low"
colorscheme solarized

syntax on

set autoindent  "Auto Indent code - This simply retains indentation level

" filetypes
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead .localrc set filetype=sh

" Showing whitespace
set list listchars=tab:\ \ ,trail:·

" General indentation settings

" Note that these vary from language to language
set tabstop=2   "Set space width of tabs
set softtabstop=2
set sw=2
set expandtab
set shiftround

set splitright  "By default, split to the right
set splitbelow
set number      "Add line numbers
set ruler       "Display Cursor Position
set title       "Display filename in titlebar
set titleold=   "Prevent the "Thanks for flying Vim"

set backupdir=~/.vim/backup/,.

set incsearch   "Display search resultings as you type
set ignorecase
set smartcase
set wildmenu

let mapleader=","
let maplocalleader=","

" Map Semicolon to : for faster command execution
nmap ; :

" \ and | switch between split screens
nmap \ <C-w><C-w>
nmap \| <C-w>W

" NERDTree
map <Leader>n :NERDTreeToggle<CR>

" CommandT
let g:CommandTMaxHeight=5
set wildignore+=*.o,.git,*.jpg,*.png,*.swp,*.d,*.gif

