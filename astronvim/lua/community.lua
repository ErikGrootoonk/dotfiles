-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.proto" },
  { import = "astrocommunity.pack.json" },
  -- UI
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
  -- Essential IDE features
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.session.vim-workspace" },
}
