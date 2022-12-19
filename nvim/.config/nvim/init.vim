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
set laststatus=3 " have common statusline for all panes


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

" Bufferline
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

" vim-fugitive
Plug 'tpope/vim-fugitive'

" gitsigns
Plug 'lewis6991/gitsigns.nvim'

" Language Server Protocol
Plug 'neovim/nvim-lspconfig'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

" nvim-tree
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

" -- Colorscheme
set termguicolors
set background=dark
colorscheme gruvbox-material

" -- Plugin Configs
lua require('singhayu')

" remaps
" -- Base Remaps - from https://thoughtbot.com/blog/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" -- Telescope Remaps
nnoremap <C-p> :Telescope find_files<Cr>
nnoremap <C-f> :Telescope live_grep<Cr>

" -- nvim-tree Remaps
nnoremap <C-\> :NvimTreeToggle<Cr>
