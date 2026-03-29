-- LSP configuration for Neovim 0.11+
-- To add a new language:
--   1. Add the server name to ensure_installed below
--   2. Optionally create lua/lsp/<server_name>.lua returning a config table
--   That's it — Mason installs it and the handler picks it up automatically.

return {
  -- Mason: installs LSP servers, formatters, linters
  {
    "williamboman/mason.nvim",
    cmd  = "Mason",
    opts = { ui = { border = "rounded" } },
  },

  -- nvim-lspconfig + mason-lspconfig wired together
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- ── Shared on_attach ────────────────────────────────────────────────
      local function on_attach(_, bufnr)
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end
        map("n", "K",           vim.lsp.buf.hover,                              "Hover docs")
        map("n", "gD",          vim.lsp.buf.declaration,                        "Go to declaration")
        map("n", "<leader>ca",  vim.lsp.buf.code_action,                        "Code action")
        map("n", "<leader>rn",  vim.lsp.buf.rename,                             "Rename symbol")
        map("n", "<leader>lf",  function() vim.lsp.buf.format({ async = true }) end, "Format")
        map("n", "<leader>li",  "<cmd>LspInfo<cr>",                             "LSP info")
        map("n", "<leader>lr",  "<cmd>LspRestart<cr>",                          "Restart LSP")
        map({ "n", "i" }, "<C-k>", vim.lsp.buf.signature_help,                 "Signature help")
      end

      -- ── Diagnostics ─────────────────────────────────────────────────────
      vim.diagnostic.config({
        severity_sort = true,
        float         = { border = "rounded", source = true },
        signs         = true,
        underline     = true,
        virtual_text  = { prefix = "●" },
      })

      -- ── Capabilities (enhanced by nvim-cmp or blink.cmp if present) ─────
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local ok_cmp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
      if ok_cmp then capabilities = cmp_lsp.default_capabilities(capabilities) end
      local ok_blink, blink = pcall(require, "blink.cmp")
      if ok_blink then capabilities = blink.get_lsp_capabilities(capabilities) end

      -- ── Per-server setup helper ──────────────────────────────────────────
      local lspconfig = require("lspconfig")
      local function setup_server(server_name)
        local ok, user_cfg = pcall(require, "lsp." .. server_name)
        local cfg          = ok and user_cfg or {}
        cfg.on_attach      = cfg.on_attach    or on_attach
        cfg.capabilities   = cfg.capabilities or capabilities
        lspconfig[server_name].setup(cfg)
      end

      -- ── Mason-lspconfig: install + auto-setup ────────────────────────────
      -- `handlers` replaces the old `setup_handlers()` method (mason-lspconfig v2+)
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "ts_ls",
          "rust_analyzer",
          "gopls",
          "bashls",
          "jsonls",
          "yamlls",
        },
        automatic_installation = true,
        -- Default handler runs for every installed server.
        -- Add a named entry to override a specific server, e.g.:
        --   rust_analyzer = function() setup_server("rust_analyzer") end,
        handlers = {
          function(server_name) setup_server(server_name) end,
        },
      })
    end,
  },
}
