" --- General 

set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set numberwidth=1
" set relativenumber
" set signcolumn=number
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set scrolloff=999
set noshowmode
set updatetime=250 
set encoding=UTF-8
set mouse=a


" --- Plugins

call plug#begin('~/.config/nvim/plugged')

Plug 'sainnhe/gruvbox-material'

" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

" Lightline
Plug 'itchyny/lightline.vim'

" vim-fugitive
Plug 'tpope/vim-fugitive'

" gitsigns
Plug 'lewis6991/gitsigns.nvim'

call plug#end()

" -- Colorscheme
set termguicolors
set background=dark
colorscheme gruvbox-material

" -- Plugin Configs
lua require('singhayu')

" remaps
nnoremap <C-p> :Telescope find_files<Cr>
