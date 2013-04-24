set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Add your chosen bundles here:


Bundle 'scrooloose/nerdtree.git'
Bundle 'kien/ctrlp.vim'
" Shift-Tab when you want to move out when your cursor is inside the pair
" Also, if you type ( it will auto add ) and if you then still type ) it will
" know to just add the one 
Bundle 'Raimondi/delimitMate' 


" After your bundle list:

filetype plugin indent on     " required!


" This is testing the line for to see how many chars on this line it will
" allow before going to the next lie.
" How does it know that??
