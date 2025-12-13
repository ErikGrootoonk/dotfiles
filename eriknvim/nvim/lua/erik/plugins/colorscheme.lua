return {
    {
    "tanvirtin/monokai.nvim",
     lazy = false,
     name = "monokai",
     priority = 1000,
    },
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
      config = function()
         vim.cmd.colorscheme "tokyonight-night"
       end
    },
  }

