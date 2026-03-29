return {
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = { command = "clippy" },
      cargo       = { allFeatures = true },
      inlayHints  = {
        bindingModeHints            = { enable = false },
        chainingHints               = { enable = true },
        closingBraceHints           = { enable = true, minLines = 25 },
        closureReturnTypeHints      = { enable = "never" },
        parameterHints              = { enable = true },
        typeHints                   = { enable = true },
      },
    },
  },
}
