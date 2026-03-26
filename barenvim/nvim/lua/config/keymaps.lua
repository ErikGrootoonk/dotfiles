--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- toggle neotree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<cr>", { desc = "toggle Neotree", silent = true, noremap = true })

-- Navigate vim panes better
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

-- block select in WSL
vim.keymap.set ('n', '<leader>v', '<C-v>')

-- jj to esc in insert mode
vim.keymap.set({'i', 'v'}, 'jj', '<Esc>', { noremap = true })

-- save file
vim.keymap.set({ 'n', 'i', 'v' }, '<C-s>', '<Cmd>w<CR>', {desc = 'write file with ctrl-s', noremap = true, silent = true })
