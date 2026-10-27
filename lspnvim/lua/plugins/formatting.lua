return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  cmd = "ConformInfo",
  keys = {
    { "<leader>cf", function() require("conform").format({ lsp_format = "fallback" }) end, desc = "Format file" },
  },
  opts = {
    formatters_by_ft = {
      terraform = { "terraform_fmt" },
      ["terraform-vars"] = { "terraform_fmt" },
      hcl = { "terraform_fmt" },
    },
    -- terraform_fmt needs the terraform binary; falls back to terraform-ls formatting
    format_on_save = { timeout_ms = 1000, lsp_format = "fallback" },
  },
}
