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

    keys = {
      { "<leader>ff",
      function() require('fzf-lua').files()  end,
      desc="Find files in project directory",
      },
      { "<leader>fg",
      function() require('fzf-lua').live_grep()  end,
      desc="Find by grepping in project",
      },
      { "<leader>fc",
      function() require('fzf-lua').files({cwd=vim.fn.stdpath("config")})  end,
      desc="[f]ind in neovim [c]onfiguration",
      },
      { "<leader>fk",
      function() require('fzf-lua').keymaps()  end,
      desc="Find your keymaps",
      },
      { "<leader>fo",
      function() require('fzf-lua').oldfiles()  end,
      desc="Find Old files",
      },
      { "<leader>fw",
      function() require('fzf-lua').grep_cword()  end,
      desc="Find words",
      },
      { "<leader><leader>",
      function() require('fzf-lua').buffers()  end,
      desc="show buffers",
      },
      { "<leader>/",
      function() require('fzf-lua').lgrep_curbuf()  end,
      desc="[/] Live grep the current buffer",
      },
  }


}
}
