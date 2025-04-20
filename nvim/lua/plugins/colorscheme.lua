return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      --   vim.cmd.colorscheme "catppuccin-mocha"
    end
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    name = "onedark",
    priority = 1000,
    config = function()
      require('onedark').setup({
        style = 'darker',
        toggle_style_key = '<leader>ts',
        toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }
      })
      vim.cmd.colorscheme "onedark"
    end
  }
}
