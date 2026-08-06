-- AstroNvim core pins aerial.nvim to "^2.2", but Neovim >=0.12 removed the
-- legacy treesitter `iter_matches({ all = false })` compatibility path that
-- aerial.nvim <3.1 relies on, which crashes the treesitter backend. Allow
-- Lazy to pull a version with the fix (and matching nvim >=0.12 requirement).

---@type LazySpec
return {
  "stevearc/aerial.nvim",
  version = "^4",
}
