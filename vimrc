set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" ------------------------------------------- [ Add your chosen bundles here


Bundle 'scrooloose/nerdtree.git'
Bundle 'kien/ctrlp.vim'
" Change the default mode when pressing <c-p> {
 	let g:ctrlp_cmd = 'CtrlPLastMode'
" }



" Shift-Tab when you want to move out when your cursor is inside the pair
" Also, if you type ( it will auto add ) and if you then still type ) it will
" know to just add the one 
Bundle 'Raimondi/delimitMate' 

" Next: buffer explorer? CtrlPBuffer can do that already...True, but something
" like minibufExplorer can make visible those buffers in a minimal view
  Bundle 'fholgado/minibufexpl.vim'

" -------------------------------------------- [ After your bundle list

filetype plugin indent on     " required!


" Remap ; : so that you dont have to press shift
" Testing autosource only, since I like to have ; available for 'next' when using f for
" finding chars
" Seems that when I add this option it autoload it and the map works, but when
" I remove it, the mapping stays?
" nnoremap ; :

" Automatically have vim watch for vimrc* file changes and source them
augroup myvimrc
	au!
	au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
