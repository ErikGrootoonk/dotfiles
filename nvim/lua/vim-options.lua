-- set nofsync
-- vim.g.nofsync = true

-- set tab behaviour
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- vim.cmd("colorscheme unokai")
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>v', '<C-v>')
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', '<leader>ec', ':edit $MYVIMRC<CR>', { desc = 'Edit config' })
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"                         -- Always show sign column
-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>v', '<C-v>')
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('i', '<leader>w>', '<C-o>:w<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
-- Buffers
vim.keymap.set('n', '<tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-tab>', ':bprevious<CR>')
