-- Navigate vim panes better
vim.keymap.set('n', '<c-h>', ':wincmd h<cr>', {desc = 'move to pane left'})
vim.keymap.set('n', '<c-j>', ':wincmd j<cr>', {desc = 'move to pane down'})
vim.keymap.set('n', '<c-k>', ':wincmd k<cr>', {desc = 'move to pane up'})
vim.keymap.set('n', '<c-l>', ':wincmd l<cr>', {desc = 'move to pane right'})
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>w', ':w<cr>', {desc = 'save file with leader w'}) -- Save file

-- Block V select in windows
-- vim.keymap.set('n', '<c-/>', '<c-v', {desc = 'enable block select in wsl'})

-- Toggle Terminal
vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>', {desc = 'toggle terminal'})
