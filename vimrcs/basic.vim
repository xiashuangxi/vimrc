""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 作者: xiashuangxi <xiashuangxi@hotmail.com>
" 
"               https://github.com/xiashuangxi/vimrc
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

set nocompatible
set backspace=indent,eol,start

" 最大历史记录（默认20）
set history=1000

" 打开文件类型检查
filetype plugin on
filetype indent on

syntax on

set mouse=a
set mousehide

" set $LANG='en'
" set langmenu=en

set showmode
set cursorline
set cursorcolumn

set textwidth=0
if exists('&colorcolumn')
    set colorcolumn=80
endif

set number
set relativenumber
set showmatch

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set guioptions-=m
set guioptions-=r
set guioptions-=L

if has('gui_running')
	set guifont=Consolas:h9.2
	silent! colo seoul256-light
else
	silent! colo seoul256
endif