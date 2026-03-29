return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
      "telescope",   -- use telescope-like default profile
      winopts = {
        height  = 0.85,
        width   = 0.90,
        preview = { layout = "flex", flip_columns = 120 },
      },
      keymap = {
        fzf = {
          ["ctrl-q"] = "select-all+accept",   -- send all to quickfix
        },
      },
      fzf_opts = {
        ["--layout"] = "reverse",
        ["--info"]   = "inline",
      },
      files = {
        fd_opts = "--color=never --type f --hidden --follow --exclude .git",
      },
    },
  },
}
