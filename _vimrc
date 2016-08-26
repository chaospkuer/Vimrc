set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
"menu mess
source $VIMRUNTIME/delmenu.vim  
source $VIMRUNTIME/menu.vim 
behave mswin

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=C:/Vim/vimfiles/bundle/Vundle.vim/
call vundle#begin('C:/Vim/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" color and colorscheme
Plugin 'altercation/vim-colors-solarized'

" easy motion
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'

" ctrlp
Plugin 'kien/ctrlp.vim'

"auto complete
Plugin 'Shougo/neocomplete.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
" Plugin 'SirVer/ultisnips'

" comment
Plugin 'scrooloose/nerdcommenter'

" search
Plugin 'ggreer/the_silver_searcher'

" surround
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'

"indent
" Plugin 'nathanaelkane/vim-indent-guides'

" state bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" message mess
language messages zh_CN.utf-8

" vim
set nu
colorscheme solarized 
set background=dark

set ts=4
set sw=4
set softtabstop=4
set et
set cindent

" recover to last edit position
autocmd BufReadPost *
\ if line("'\"")>0&&line("'\"")<=line("$") |
\ exe "normal g'\"" |
\ endif

" auto update when file changed outside
if exists("&autoread")
    set autoread
endif

" switch tab and splitWindow
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <s-h> <c-w>h
nnoremap <s-l> <c-w>l
nnoremap <c-h> :tabp<enter>
nnoremap <c-l> :tabn<enter>

";
nnoremap ; :

" jump
nnoremap <s-j> <c-d>
nnoremap <s-k> <c-u>

" case
set ic

" indent
set ts=4
set noexpandtab

" chinese character
set encoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gk2312

" window
set guioptions-=m 
set guioptions-=T

" return to normal mode when lost focus
" au FocusLost,TabLeave * call feedkeys("\<C-\>\<C-n>")

" reopen last files when open vim
autocmd VimLeave * nested if (!isdirectory($HOME . "/.vim")) |
   \ call mkdir($HOME . "/.vim") |
   \ endif |
   \ execute "mksession! " . $HOME . "/.vim/Session.vim"
autocmd VimEnter * nested if argc() == 0 && filereadable($HOME . "/.vim/Session.vim") |
   \ execute "source " . $HOME . "/.vim/Session.vim"

" Run maximized in GUI
if has("gui_running")
   au GUIEnter * simalt ~x
endif

" state bar
set statusline=%f

" =
nnoremap == gg=G<c-o><c-o>zz

" delete
inoremap <s-BS> <delete>
inoremap <c-BS> <c-w>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" easymotion
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
map , <Plug>(easymotion-s)

" superTab
let g:SuperTabMappingForward = "<tab>"	

" ctrlp
let g:ctrlp_working_path_mode='w'

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
map - <Plug>NERDCommenterToggle

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_skip_key='<c-f>'
let g:multi_cursor_quit_key='<c-c>'
let g:multi_cursor_next_key='<c-d>'

" vim-airline
let g:AirlineTheme='solarized'

