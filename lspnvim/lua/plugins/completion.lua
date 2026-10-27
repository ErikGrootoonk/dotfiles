return {
  "saghen/blink.cmp",
  version = "1.*",
  event = "InsertEnter",
  ---@module "blink.cmp"
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = "default" }, -- <C-y> accept, <C-n>/<C-p> navigate, <C-space> open
    completion = { documentation = { auto_show = true } },
    sources = { default = { "lsp", "path", "buffer" } },
    signature = { enabled = true },
  },
}
