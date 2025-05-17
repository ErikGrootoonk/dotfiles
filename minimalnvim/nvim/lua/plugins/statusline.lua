return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = "",
        section_separators = "",
      },

      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {
          {
            "filename",
            path = 1, -- Show relative path
            file_status = true,
            symbols = {
              modified = "", -- Empty string as we'll add our own indicator
              readonly = " ",
              unnamed = "[No Name]",
            },
          },
          {
            -- Custom modified indicator with specified color
            function()
              return vim.bo.modified and "●" or ""
            end,
            color = { fg = "#ff9e64" }, -- Orange color for modified indicator
          },
        },
        lualine_x = {
          function()
            encoding = vim.o.fileencoding
            if encoding == "" then
              return vim.bo.fileformat .. " :: " .. vim.bo.filetype
            else
              return encoding .. " :: " .. vim.bo.fileformat .. " :: " .. vim.bo.filetype
            end
          end,
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      extensions = { "fugitive" },
    })
  end,
}
