local opt = vim.opt

-- UI
opt.number         = true
opt.relativenumber = true
opt.signcolumn     = "yes"
opt.cursorline     = true
opt.termguicolors  = true
opt.scrolloff      = 8
opt.sidescrolloff  = 8
opt.wrap           = false
opt.splitright     = true
opt.splitbelow     = true
opt.showmode       = false
opt.laststatus     = 3   -- global statusline

-- Editing
opt.tabstop        = 4
opt.shiftwidth     = 4
opt.expandtab      = true
opt.smartindent    = true
opt.clipboard      = "unnamedplus"
opt.undofile       = true
opt.undolevels     = 10000
opt.swapfile       = false

-- Search
opt.ignorecase     = true
opt.smartcase      = true
opt.hlsearch       = true
opt.incsearch      = true

-- Completion
opt.completeopt    = "menu,menuone,noselect"
opt.pumheight      = 10

-- Performance
opt.updatetime     = 200
opt.timeoutlen     = 300

-- backups
opt.backup = false      -- create a backup file
opt.swapfile = false    -- creates a swapfile
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.undofile = true		-- set undo file
vim.o.undodir = vim.fn.expand("~/.local/share/nvim/undodir")


