set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" ------------------------------------------- [ Add your chosen bundles here

" NERDTree  - filesystem browser
Bundle 'scrooloose/nerdtree.git'
" Toggle an existing NERDTree for this tab, else open a fresh one {
" Any of these should first toggle MiniBufExpl because when you close
" NERDTree, or toggle, it focus MiniBufExpl instead of the window where it
" was! Ok, this doesnt work; it should be:
" IF MiniBufExpl is visible, hide it first, then show NERDTree
" IF MiniBufExpl is !visible, then hide NERDTree, and then show MiniBufExpl
" Until then, I'll not try and put that here...

        map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
        map <leader>e :NERDTreeFind<CR>
        nmap <leader>nt :NERDTreeFind<CR>
        "map <C-e> :TMiniBufExplorer<CR>:NERDTreeToggle<CR>:NERDTreeMirror<CR>
        "map <leader>e :TMiniBufExplorer<CR>:NERDTreeFind<CR>
        "nmap <leader>nt :TMiniBufExplorer<CR>:NERDTreeFind<CR>
        
	let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        " The documentation doesnt know about these, but SPF13 had them
	" defined?" THEY ARE REMOVED because the other command like toggle &
	" mirror does what you need
	"let NERDTreeKeepTreeInNewTab=1
        "let g:nerdtree_tabs_open_on_gui_startup=0
" }



" CtrlP - Smart match file search (sort of overlaps with NERDTree)
Bundle 'kien/ctrlp.vim'
" Change the default mode when pressing <c-p> {
 	let g:ctrlp_cmd = 'CtrlPLastMode'
" }

" DelimitMate - Auto close opening brackets,braces,etc
" Shift-Tab when you want to move out when your cursor is inside the pair
" Also, if you type ( it will auto add ) and if you then still type ) it will
" know to just add the one 
Bundle 'Raimondi/delimitMate' 

" MiniBufExpl - Visually list open buffers
" Next: buffer explorer? CtrlPBuffer can do that already...True, but something
" like minibufExplorer can make visible those buffers in a minimal view
  Bundle 'fholgado/minibufexpl.vim'
" Add keybinding to toggle miniBufExpl window {
  map <Leader>t :TMiniBufExplorer<cr>
  " These dont seem to work, what am I missing:"
  "let g:miniBufExplMapCTabSwitchBufs = 1
  "let g:miniBufExplMapCTabSwitchWindows = 1
" }



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
