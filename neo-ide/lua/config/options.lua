local opt = vim.opt
local api = vim.api

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



-- no auto continue comments on new line
api.nvim_create_autocmd("FileType", {
	group = api.nvim_create_augroup("no_autocomment", {}),
	callback = function()
		vim.opt_local.formatoptions:remove({ "c", "r", "o" })
	end,
})

-- highlight yank
api.nvim_create_autocmd("TextYankPost", {
	group = api.nvim_create_augroup("highlight_yank", { clear = true }),
	pattern = "*",
	desc = "highlight selection on yank",
	callback = function()
		vim.highlight.on_yank({ timeout = 200, visual = true })
	end,
})

-- restore cursor to file position in previous editing session
api.nvim_create_autocmd("BufReadPost", {
	callback = function(args)
		local mark = api.nvim_buf_get_mark(args.buf, '"')
		local line_count = api.nvim_buf_line_count(args.buf)
		if mark[1] > 0 and mark[1] <= line_count then
			api.nvim_win_set_cursor(0, mark)
			-- defer centering slightly so it's applied after render
			vim.schedule(function()
				vim.cmd("normal! zz")
			end)
		end
	end,
})

-- open help in vertical split
api.nvim_create_autocmd("FileType", {
	pattern = "help",
	command = "wincmd L",
})

-- auto resize splits when the terminal's window is resized
api.nvim_create_autocmd("VimResized", {
	command = "wincmd =",
})



