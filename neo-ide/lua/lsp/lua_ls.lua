return {
  settings = {
    Lua = {
      runtime   = { version = "LuaJIT" },
      workspace = {
        checkThirdParty = false,
        library         = {
          vim.env.VIMRUNTIME,
          "${3rd}/luv/library",
        },
      },
      diagnostics = { globals = { "vim" } },
      telemetry   = { enable = false },
      format      = { enable = false },  -- use stylua externally if desired
    },
  },
}
