set relativenumber
set rnu
set hidden
set noerrorbells
set nowrap
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir 
set undofile
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=number
set cmdheight=1
set noshowmode
set completeopt=menuone,noinsert,noselect
set shortmess+=c

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'joshdick/onedark.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'nvim-lua/lsp-status.nvim'

Plug 'prettier/vim-prettier'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'lewis6991/gitsigns.nvim'

call plug#end()

colorscheme onedark

let mapleader=" "

command! Q :q
command! X :x


lua << EOF
require("lsp")
require("keymaps")
require("fuzzy")
require("status")
require("tree")
require("editor")
EOF

