
set nocompatible
syntax on
let mapleader=" "
set termguicolors
set number
set mouse=a
set noswapfile

nnoremap <leader>e :Lexplore <cr>

call plug#begin()

" List your plugins here
Plug 'folke/tokyonight.nvim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

let g:tokyonight_style= 'night'
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

set clipboard+=unnamedplus
