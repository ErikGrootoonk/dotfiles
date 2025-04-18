"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
syntax on
let mapleader=" "
set timeoutlen=500
set number
set relativenumber
set encoding=utf-8
set wrap
set path+=**
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set copyindent
set expandtab
set noshiftround
set mouse=a
set hlsearch
set incsearch
set ignorecase
set showmatch
set smartcase
set wildmenu
set noswapfile
set updatetime=300      " decrease update time
set hidden
set ttyfast
set laststatus=2
set termguicolors
filetype on
set showcmd
set background=dark
nnoremap <F2> :NERDTreeToggle <CR>
nnoremap <leader>e :NERDTreeToggle <CR>
nnoremap <F3> :bel term <CR>
nnoremap <F4> :w<cr>
inoremap <F4> <c-o>:w<cr>

"  Navigate vim panes better
nnoremap <c-k> :wincmd k<cr>
nnoremap <c-j> :wincmd j<cr>
nnoremap <c-h> :wincmd h<cr>
nnoremap <c-l> :wincmd l<cr>

nnoremap <leader>h :nohlsearch<cr>
nnoremap <leader>v <C-v>
nnoremap <tab> :bnext<cr> 
nnoremap <S-tab> :bprevious<cr>

"delete single character without copying into register
nnoremap x "_x

" Buffer navigation
nnoremap <tab> :bnext<cr>
nnoremap <s-tab> :bprevious<cr>
nnoremap <leader>d :bd<cr>

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'ghifarit53/tokyonight-vim'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1


colorscheme tokyonight

" Coc config "

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate
" " NOTE: There's always complete item selected by default, you may want to
" enable
"no select by ` "suggest.noselect": true` in your configuration file
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config
inoremap <silent><expr> <TAB>
       \ coc#pum#visible() ? coc#pum#next(1) :
       \ CheckBackspace() ? "\<Tab>" :
       \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1)
               "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \:"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col ||
  getline('.')[col - 1]
  =~# '\s'
endfunction

" set tab and s-tab to navigate the completion list 
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" show indentlines
let g:indentLine_char = '⦙'

" delete with x and delete
nnoremap x "_x
nnoremap X "_x
nnoremap <Del> "_x

" Toggle spell check.
map <F5> :setlocal spell!<CR>



set clipboard+=unnamedplus
" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
