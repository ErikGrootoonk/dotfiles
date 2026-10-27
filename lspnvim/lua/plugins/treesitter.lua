return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local parsers = { "terraform", "hcl", "lua", "vim", "vimdoc", "json", "yaml", "bash", "markdown" }
    require("nvim-treesitter").install(parsers)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "terraform", "terraform-vars", "hcl", "lua", "vim", "help", "json", "yaml", "sh", "markdown" },
      callback = function()
        if pcall(vim.treesitter.start) then
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
