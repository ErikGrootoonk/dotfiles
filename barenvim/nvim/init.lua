--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
--File: options.lua
-- Description: General Neovim settings and configuration
-- local cmd = vim.cmd
-- Set options (global/buffer/windows-scoped)
-- Global variables

-- setup lazy
--require("config.lazy")



local g = vim.g
local indent = 2

g.mapleader = " "

vim.cmd [[
	filetype plugin indent on
]]

-- Sync clipboard between OS and Neovim. Schedule the setting after `UiEnter` because it can
-- increase startup-time. Remove this option if you want your OS clipboard to remain independent.
-- See `:help 'clipboard'`
vim.api.nvim_create_autocmd('UIEnter', {
  callback = function()
    vim.opt.clipboard = 'unnamedplus'
  end,
})

vim.opt.backspace = { "eol", "start", "indent" } -- allow backspacing over everything in insert mode
vim.opt.clipboard = "unnamedplus" -- allow neovim to access the system clipboard
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.encoding = "utf-8" -- the encoding
vim.opt.matchpairs = { "(:)", "{:}", "[:]", "<:>" }
vim.opt.syntax = "enable"

-- indention
vim.opt.autoindent = true -- auto indentation
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = indent -- the number of spaces inserted for each indentation
vim.opt.smartindent = true -- make indenting smarter
vim.opt.softtabstop = indent -- when hitting <BS>, pretend like a tab is removed, even if spaces
vim.opt.tabstop = indent -- insert 2 spaces for a tab
vim.opt.shiftround = true -- use multiple of shiftwidth when indenting with "<" and ">"

-- tabline
vim.opt.showtabline = 2 -- always show tabs
vim.opt.sessionoptions = "curdir,folds,globals,help,tabpages,terminal,winsize"
-- search
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.smartcase = true -- smart case
vim.opt.wildignore = vim.opt.wildignore + { "*/node_modules/*", "*/.git/*", "*/vendor/*" }
vim.opt.wildmenu = true -- make tab completion for files/buffers act like bash
vim.opt.path = "+=**" -- search files recursively

-- ui
vim.opt.cursorline = true -- highlight the current line
vim.opt.laststatus = 2 -- only the last window will always have a status line
vim.opt.lazyredraw = true -- don"t update the display while executing macros
vim.opt.list = true
vim.opt.winborder = "rounded"
-- You can also add "space" or "eol", but I feel it"s quite annoying
vim.opt.listchars = {
    tab = "┊ ",
    trail = "·",
    extends = "»",
    precedes = "«",
    nbsp = "×",
}

-- netrw config
g.netrw_banner = 0	    			-- gets rid of the annoying banner for netrw
--g.netrw_browse_split = 4
--g.netrw_altv = 0					-- change from left splitting to right splitting
g.netrw_liststyle = 3				-- tree style view in netrw
----vim.g.netrw_winsize = 30                -- takes up 30% of the screen
--g.netrw_sizestyle = "H"
--g.netrw_sort_sequence = [[[\/]$,*]] -- sort directories first
--g.netrw_keepdir = 0
--g.netrw_sort_sequence = [[[\/]$,*]]
--g.netrw_sizestyle = "H"
--g.netrw_localcopydircmd = "cp -r"
--g.netrw_localmkdir = "mkdir -p"
--g.netrw_localrmdir = "rm -r"
--g.netrw_compress = "gzip"
--g.netrw_cursor = 2
--g.netrw_preview = 0
--g.netrw_alto = 1

-- directory names are blue
vim.api.nvim_set_hl(0, "netrwDir", { fg = "#83a598" })
-- classify symbols "/" are green
vim.api.nvim_set_hl(0, "netrwClassify", { fg = "#b8bb26" })
-- executable files are yellow
vim.api.nvim_set_hl(0, "netrwExe", { fg = "#fabd2f" })
-- symlinks are purple 
vim.api.nvim_set_hl(0, "netrwExe", { fg = "#d3869b" })
-- marked files are orange
vim.api.nvim_set_hl(0, "netrwExe", { fg = "#fe8019" })




-- Hide cmd line
-- vim.opt.cmdheight = 0 -- more space in the neovim command line for displaying messages
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = false -- set relative number
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
vim.o.undofile = true					-- set undo file
vim.o.undodir = vim.fn.expand("~/.local/share/nvim/undodir")


-- autocomplete
vim.opt.completeopt = { "menu", "menuone", "noselect" } -- mostly just for cmp
vim.opt.shortmess = vim.opt.shortmess + {
    c = true,
} -- hide all the completion messages, e.g. "-- XXX completion (YYY)", "match 1 of 2", "The only match", "Pattern not found"

-- By the way, -- INSERT -- is unnecessary anymore because the mode information is displayed in the statusline.
vim.opt.showmode = true

-- perfomance
-- remember N lines in history
vim.opt.history = 100 -- keep 100 lines of history
vim.opt.redrawtime = 1500
vim.opt.timeoutlen = 250 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.ttimeoutlen = 10
vim.opt.updatetime = 100 -- signify default updatetime 4000ms is not good for async update

-- theme
vim.opt.termguicolors = true -- enable 24-bit RGB colors
vim.cmd('colorscheme retrobox') 

-- keymaps
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>e', ':25Lexplore<CR>')
vim.keymap.set('n', '<leader>v', '<C-v>')

-- reload config
vim.keymap.set("n", "<leader>r", ":source ~/.config/nvim/init.lua<CR>")

-- easy split generation
vim.keymap.set("n", "<leader>vs", ":vsplit ")				-- space+v creates a veritcal split
vim.keymap.set("n", "<leader>hs", ":split ")					-- space+s creates a horizontal split

-- adjust split sizes easier
vim.keymap.set("n", "<C-Left>", ":vertical resize -3<CR>")		-- Control+Left resizes vertical split +
vim.keymap.set("n", "<C-Right>", ":vertical resize +3<CR>")	-- Control+Right resizes vertical split -


-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Terminal below

--vim.keymap.set('n', '<leader>t', ':bel split && :terminal<CR>', {
--  noremap = true,
--  silent = true,
--  desc = '[T]erminal (Horizontal Split Below)'
--})
