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
