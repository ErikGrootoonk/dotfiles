return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-mini/mini.icons" },
    opts = {},
    keys = {
      { "<leader>ff", function() require("fzf-lua").files() end, desc = "Find files" },
      { "<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Live grep" },
      { "<leader><leader>", function() require("fzf-lua").buffers() end, desc = "Buffers" },
      { "<leader>fd", function() require("fzf-lua").diagnostics_document() end, desc = "Diagnostics" },
      { "<leader>fs", function() require("fzf-lua").lsp_document_symbols() end, desc = "Document symbols" },
    },
  },
  {
    "nvim-mini/mini.statusline",
    opts = {},
  },
}
