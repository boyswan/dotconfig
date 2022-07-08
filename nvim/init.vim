set relativenumber
set rnu
set hidden
set noerrorbells
set nowrap
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set nowrap
set noswapfile
set nobackup 
set undodir=~/.vim/undodir 
set undofile
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=yes
set number 
set cmdheight=0
set noshowmode
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set laststatus=3
set formatoptions-=cro
set ignorecase
set smartcase 
set splitright

call plug#begin('~/.vim/plugged')
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
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
Plug 'akinsho/bufferline.nvim'
Plug 'romainl/vim-cool'
Plug 'prettier/vim-prettier'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lewis6991/gitsigns.nvim'
Plug 'machakann/vim-sandwich'
Plug 'j-hui/fidget.nvim'
Plug 'vimpostor/vim-tpipeline' 
Plug 'numToStr/Comment.nvim'
Plug 'rescript-lang/vim-rescript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nkrkv/nvim-treesitter-rescript'
Plug 'MunifTanjim/nui.nvim'
Plug 'matze/vim-move'
Plug 'nvim-neo-tree/neo-tree.nvim', {'branch':  'v2.x'}
Plug 'folke/trouble.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'phaazon/hop.nvim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

let mapleader=" "
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:tpipeline_cursormoved = 1
let g:tpipeline_fillcentre = 1
let g:move_key_modifier_visualmode = 'C'
let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha
let loaded_netrwPlugin = 1

colorscheme catppuccin

command! Q :q
command! X :x
command! W :w


set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#232333 ctermbg=234

lua << EOF
require("lsp")
require("keymaps")
require("fuzzy")
require("status")
require("tree")
require("editor")
EOF

