return {
  {
    "ghifarit53/tokyonight-vim",
    lazy = false,
    opts = { 
    tokyonight_style = 'day',
    tokyonight_enable_italic = 1,
    },
    priority = 1000,
    config = function()
       vim.cmd.colorscheme "tokyonight"
    end
  },
}
