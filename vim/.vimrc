" Required to use all ViM features instead of being compatible with Vi
" https://www.howtoforge.com/tutorial/vim-editor-modes-explained/
set nocompatible

" TODO
filetype off

" Indenting - TODO
set autoindent
set smartindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
autocmd Filetype html setlocal ts=2 sw=2 expandtab


" set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins - TODO - use Vim8 native plugin path
""call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'sjl/badwolf'
Plugin 'sheerun/vim-polyglot'
Plugin 'mhinz/vim-startify'
Plugin 'dense-analysis/ale'

" All plugins must be added before current line
call vundle#end()

" TODO - understand lines below
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" allow backspace to work in INSERT mode - :help backspace for more
set backspace=indent,eol,start 

" turn absolute line numbers off
set number 

" turn syntax highlighting on
syntax on 

" TODO - understand
set laststatus=2

" TODO - understand
if !has('gui_running')
    set t_Co=256
endif

" Remove -- INSERT -- mode information as lightline displays it anyway
set noshowmode

" TODO
set ttymouse=xterm2
