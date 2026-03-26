-- ~/.config/nvim/lua/config/lsp.lua

-- Diagnostic display config
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Keymaps applied when LSP attaches to a buffer
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local buf = args.buf
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { buffer = buf, desc = desc })
    end
    map("n", "gd",         vim.lsp.buf.definition,     "Go to definition")
    map("n", "gD",         vim.lsp.buf.declaration,    "Go to declaration")
    map("n", "gr",         vim.lsp.buf.references,     "Find references")
    map("n", "gi",         vim.lsp.buf.implementation, "Go to implementation")
    map("n", "K",          vim.lsp.buf.hover,          "Hover docs")
    map("n", "<leader>rn", vim.lsp.buf.rename,         "Rename symbol")
    map("n", "<leader>ca", vim.lsp.buf.code_action,    "Code action")
    map("n", "<leader>f",  vim.lsp.buf.format,         "Format buffer")
    map("n", "[d",         vim.diagnostic.goto_prev,   "Prev diagnostic")
    map("n", "]d",         vim.diagnostic.goto_next,   "Next diagnostic")
    map("n", "<leader>ge", vim.diagnostic.open_float,  "Show diagnostic")
  end,
})

-- Start Pyright when a Python file is opened
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.lsp.start({
      name     = "pyright",
      cmd      = { "pyright-langserver", "--stdio" },
      root_dir = vim.fs.dirname(
        vim.fs.find({ "pyproject.toml", "setup.py", "setup.cfg", ".git" }, { upward = true })[1]
      ) or vim.fn.expand("%:p:h"),
      settings = {
        python = {
          analysis = {
            typeCheckingMode       = "basic",
            autoSearchPaths        = true,
            useLibraryCodeForTypes = true,
          },
        },
      },
    })
  end,
})

-- Lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.lsp.start({
      name     = "lua_ls",
      cmd      = { "lua-language-server" },
      root_dir = vim.fs.dirname(
        vim.fs.find({ ".luarc.json", ".git" }, { upward = true })[1]
      ) or vim.fn.expand("%:p:h"),
      settings = {
        Lua = {
          runtime = { version = "LuaJIT" },  -- Neovim uses LuaJIT
          diagnostics = { globals = { "vim" } },  -- recognize 'vim' global
          workspace = { library = vim.api.nvim_get_runtime_file("", true) },
        },
      },
    })
  end,
})
