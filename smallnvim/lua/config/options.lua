
-- indention
vim.o.autoindent = true -- auto indentation
vim.o.expandtab = true -- convert tabs to spaces
vim.o.shiftwidth = indent -- the number of spaces inserted for each indentation
vim.o.smartindent = true -- make indenting smarter
vim.o.softtabstop = indent -- when hitting <BS>, pretend like a tab is removed, even if spaces
vim.o.tabstop = indent -- insert 2 spaces for a tab
vim.o.shiftround = true -- use multiple of shiftwidth when indenting with "<" and ">"

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.o.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.o.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

vim.o.backspace = { "eol", "start", "indent" } -- allow backspacing over everything in insert mode
-- Enable break indent
vim.o.breakindent = true

vim.opt.matchpairs = { "(:)", "{:}", "[:]", "<:>" }
-- Save undo history

vim.opt.syntax = "enable"
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.wildignore = vim.opt.wildignore + { "*/node_modules/*", "*/.git/*", "*/vendor/*" }
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time/
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-guide-options`
vim.o.list = true

vim.opt.listchars = {
    tab = "┊ ",
    trail = "·",
    extends = "»",
    precedes = "«",
    nbsp = "×",
}
-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

-- backups
vim.o.backup = false -- create a backup file
vim.o.swapfile = false -- creates a swapfile
vim.o.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.o.undofile = true	-- set undo file
vim.o.undodir = vim.fn.expand("~/.local/share/nvim/undodir")
-- perfomance


-- remember N lines in history
vim.o.history = 100 -- keep 100 lines of history
vim.o.redrawtime = 1500
vim.o.timeoutlen = 250 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.o.ttimeoutlen = 10
vim.o.updatetime = 100 -- signify default updatetime 4000ms is not good for async update

-- theme
vim.o.termguicolors = true -- enable 24-bit RGB colors
