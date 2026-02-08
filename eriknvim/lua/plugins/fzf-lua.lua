return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  --dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
   dependencies = { "nvim-mini/mini.icons" },
  ---@module "fzf-lua"
  ---@type fzf-lua.Config|{}
  ---@diagnostic disable: missing-fields
  opts = {},
  ---@diagnostic enable: missing-fields
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
