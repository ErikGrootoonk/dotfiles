return {
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        shadow       = true,
      },
      staticcheck = true,
      gofumpt     = true,
      hints = {
        parameterNames             = true,
        assignVariableTypes        = true,
        compositeLiteralFields     = true,
        compositeLiteralTypes      = true,
        constantValues             = true,
        functionTypeParameters     = true,
        rangeVariableTypes         = true,
      },
    },
  },
}
