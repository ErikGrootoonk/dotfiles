local map = vim.keymap.set

vim.g.mapleader      = " "
vim.g.maplocalleader = "\\"

-- Better movement
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n",     "nzzzv")
map("n", "N",     "Nzzzv")

-- Window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Resize windows
map("n", "<C-Up>",    "<cmd>resize +2<cr>")
map("n", "<C-Down>",  "<cmd>resize -2<cr>")
map("n", "<C-Left>",  "<cmd>vertical resize -2<cr>")
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>")

-- Buffer navigation
map("n", "<S-h>", "<cmd>bprevious<cr>")
map("n", "<S-l>", "<cmd>bnext<cr>")
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

-- Clear search highlight
map("n", "<Esc>", "<cmd>nohl<cr>")

-- Indenting in visual mode keeps selection
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move lines
map("v", "J", ":m '>+1<cr>gv=gv")
map("v", "K", ":m '<-2<cr>gv=gv")

-- Quickfix
map("n", "[q", "<cmd>cprev<cr>")
map("n", "]q", "<cmd>cnext<cr>")

-- Diagnostics
map("n", "[d", vim.diagnostic.goto_prev,  { desc = "Prev diagnostic" })
map("n", "]d", vim.diagnostic.goto_next,  { desc = "Next diagnostic" })
map("n", "<leader>ge", vim.diagnostic.open_float, { desc = "Show diagnostic" })

-- File explorer
map("n", "<leader>fe", "<cmd>Neotree toggle<cr>",  { desc = "Explorer (root)" })
map("n", "<leader>fE", "<cmd>Neotree reveal<cr>",  { desc = "Reveal file" })

-- FZF-lua
map("n", "<leader>ff", "<cmd>FzfLua files<cr>",            { desc = "Find files" })
map("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>",        { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<cr>",          { desc = "Buffers" })
map("n", "<leader>fr", "<cmd>FzfLua oldfiles<cr>",         { desc = "Recent files" })
map("n", "<leader>fs", "<cmd>FzfLua lsp_document_symbols<cr>", { desc = "Document symbols" })
map("n", "<leader>fS", "<cmd>FzfLua lsp_workspace_symbols<cr>",{ desc = "Workspace symbols" })
map("n", "<leader>fd", "<cmd>FzfLua diagnostics_document<cr>", { desc = "Document diagnostics" })
map("n", "<leader>fc", "<cmd>FzfLua commands<cr>",         { desc = "Commands" })
map("n", "<leader>/",  "<cmd>FzfLua grep_curbuf<cr>",      { desc = "Search current buffer" })
map("n", "gr",         "<cmd>FzfLua lsp_references<cr>",   { desc = "LSP references" })
map("n", "gd",         "<cmd>FzfLua lsp_definitions<cr>",  { desc = "LSP definitions" })
map("n", "gi",         "<cmd>FzfLua lsp_implementations<cr>", { desc = "LSP implementations" })


-- toggle neo-tree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<cr>", { desc = "toggle Neotree", silent = true, noremap = true })


-- block select in WSL
vim.keymap.set ('n', '<leader>v', '<C-v>')

-- jj to esc in insert mode
vim.keymap.set({'i', 'v'}, 'jj', '<Esc>', { noremap = true })

-- save file
vim.keymap.set({ 'n', 'i', 'v' }, '<C-s>', '<Cmd>w<CR>', {desc = 'write file with ctrl-s', noremap = true, silent = true })
-- lazy git

vim.keymap.set("n", "<leader>lg", "<cmd>lazyGit<cr>", { desc = "launch lazygit" })
