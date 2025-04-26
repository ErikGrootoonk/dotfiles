vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- vim.cmd("colorscheme unokai")
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>v', '<C-v>')
vim.keymap.set('n', 'x', '"_x')
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.termguicolors = true
-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>v', '<C-v>')
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', '<F4>', ':w<CR>')
vim.keymap.set('i', '<F4>', '<C-o>:w<cr>')

-- Buffers
vim.keymap.set('n', '<tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-tab>', ':bprevious<CR>')
