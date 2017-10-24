" Map Semicolon to : for faster command execution
nmap ; :

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle-- required! 
Plugin 'VundleVim/Vundle.vim'

" my Bundles
Plugin 'altercation/vim-colors-solarized'
Plugin 'wincent/Command-T'
Plugin 'scrooloose/nerdtree'

call vundle#end()
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

" Highlight past 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

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


" \ and | switch between split screens
nmap \ <C-w><C-w>
nmap \| <C-w>W

" NERDTree
map <Leader>n :NERDTreeToggle<CR>

" CommandT
let g:CommandTMaxHeight=5
set wildignore+=*.o,.git,*.jpg,*.png,*.swp,*.d,*.gif

