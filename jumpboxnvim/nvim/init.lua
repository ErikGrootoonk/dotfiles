-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
vim.g.mapleader = " "
vim.opt.syntax = "enable"
vim.opt.termguicolors = true

-- indention
vim.opt.autoindent = true -- auto indentation
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.smartindent = true -- make indenting smarter
vim.opt.softtabstop = 2 -- when hitting <BS>, pretend like a tab is removed, even if spaces
vim.opt.tabstop = 2 -- insert 4 spaces for a tab
vim.opt.shiftround = true -- use multiple of shiftwidth when indenting with "<" and ">"


vim.opt.listchars = {
    tab = "┊ ",
    trail = "·",
    extends = "»",
    precedes = "«",
    nbsp = "×",
}
-- keep plain y/d/p on Neovim's fast internal registers (instant, always works
-- between buffers); system clipboard is opt-in via <leader>y/<leader>p below,
-- since OSC52 paste requires a round trip to the terminal that can hang.
vim.opt.swapfile = false


vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true -- set relative number
vim.opt.scrolloff = 18 -- minimal number of screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 3 -- minimal number of screen columns to keep to the left and right (horizontal) of the cursor if wrap is `false`
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.splitbelow = true -- open new split below
vim.opt.splitright = true -- open new split to the right
vim.opt.wrap = true -- display a wrapped line

-- backups
vim.opt.backup = false -- create a backup file
vim.opt.swapfile = false -- creates a swapfile
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.undofile = true                                 -- set undo file
vim.o.undodir = vim.fn.expand("~/.local/share/nvim/undodir")

-- netrw banner
vim.g.netrw_banner = 0

-- color
vim.opt.termguicolors = true -- enable 24-bit RGB colors
vim.cmd.colorscheme("retrobox")

-- OSC52 clipboard support for SSH (built-in provider, handles copy and paste)
vim.g.clipboard = {
  name = 'OSC52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
  },
  paste = {
    ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
    ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
  },
}

-- explicit system-clipboard yank (leaves plain y/d/p alone).
-- No <leader>p mapping: Windows Terminal only implements OSC52 write, not the
-- query/answer needed to read its clipboard back into nvim. Paste normally
-- (Ctrl+V) instead -- that goes in as literal terminal input, not a register.
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Yank to system clipboard' })
vim.keymap.set('n', '<leader>Y', '"+Y', { desc = 'Yank line to system clipboard' })

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- block select in WSL
vim.keymap.set ('n', '<leader>v', '<c-v>')

-- jj to esc in insert mode
vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })

-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
