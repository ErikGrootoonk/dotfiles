-- options
vim.g.mapleader = " "
vim.o.autoindent = true
vim.o.scrolloff = 8
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.diagnostic.config({ virtual_text = true }) -- inline diagnostics


-- keymaps

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


-- plugins
vim.pack.add({
  { src = "https://github.com/rebelot/kanagawa.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range('3')
  },
  -- dependencies
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  -- optional, but recommended
  "https://github.com/nvim-tree/nvim-web-devicons",
})

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {"pyright", "lua_ls"}
})
require("kanagawa").setup()
vim.cmd("colorscheme kanagawa")




