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
    }
  }

}
