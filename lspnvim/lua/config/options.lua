local indent = 2 -- terraform fmt uses 2 spaces

vim.o.expandtab = true
vim.o.shiftwidth = indent
vim.o.softtabstop = indent
vim.o.tabstop = indent
vim.o.smartindent = true
vim.o.shiftround = true

vim.g.have_nerd_font = true

vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = "a"
vim.o.showmode = false
vim.schedule(function() vim.o.clipboard = "unnamedplus" end)

vim.o.breakindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.wrap = false
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.inccommand = "split"
vim.o.confirm = true

vim.o.list = true
vim.opt.listchars = { tab = "┊ ", trail = "·", extends = "»", precedes = "«", nbsp = "×" }

vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.undofile = true

vim.o.termguicolors = true
vim.o.winborder = "rounded"

-- make sure .tfvars / .tfbackend files are treated as terraform
vim.filetype.add({
  extension = {
    tfvars = "terraform-vars",
    tfbackend = "hcl",
  },
})
