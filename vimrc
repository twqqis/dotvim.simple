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

"----------------------------------------------------------------
  " EVD: I will add this once I find something that need it"
  " A few useful things and then looks like stuff that other scripts depends
  " on 
  " Bundle 'MarcWeber/vim-addon-mw-utils'

"----------------------------------------------------------------
  " EVD: I will add this once I find something that need it"
  "  This library provides some utility functions. There isn't much need to 
  "  install it unless another plugin requires you to do so.
  " Bundle 'tomtom/tlib_vim'


"----------------------------------------------------------------

" https://github.com/mileszs/ack.vim
" This plugin is a front for the Perl module App::Ack. Ack can be used as a
" replacement for 99% of the uses of grep. This plugin will allow you to run ack
" from vim, and shows the results in a split window.
" 
" The Official Version of this plugin is available at vim.org.

" Bundle 'mileszs/ack.vim'


"----------------------------------------------------------------

" Theme:
            Bundle 'altercation/vim-colors-solarized'
            " Not sure if I need/want these?
	    "Bundle 'spf13/vim-colors'

"----------------------------------------------------------------
" https://github.com/tpope/vim-surround
" Powerful script that can do all kinds of surrounding (adding, deleting,
" changing, etc)  text with various brackets, braces, ticks, even <tags>
            Bundle 'tpope/vim-surround'

"----------------------------------------------------------------
" A way to make addons/scripts repeat better than with the built in vim .
" (It only works with scripts that actually supports this plugin)
            Bundle 'tpope/repeat'


"----------------------------------------------------------------
" Speed dating: ie, a function similar to vim's Ctrl-A to increment numbers,
" but that would work on dates
" Ctrl-X / Ctrl-A
" In visual mode it will do it for multiple dates over multple lines.
" See more detail: http://github.com/tpope/vim-speeddating
	Bundle 'tpope/vim-speeddating'


"----------------------------------------------------------------
" https://github.com/tpope/vim-abolish
" Helps you search/replace words, but not just exact words, varaints of words
" also.
"	Bundle 'tpope/vim-abolish'


"----------------------------------------------------------------
" https://github.com/tpope/vim-unimpaired
" Many shortcuts to various functions, see the website
	Bundle 'tpope/vim-unimpaired'

"----------------------------------------------------------------
" https://github.com/tomtom/tcomment_vim
" Un/Comment lines of code. works like toggle
	Bundle 'tomtom/tcomment_vim'


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
