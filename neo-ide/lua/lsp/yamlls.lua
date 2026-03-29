return {
  settings = {
    yaml = {
      keyOrdering   = false,
      format        = { enable = true },
      validate      = true,
      schemaStore   = { enable = false, url = "" },  -- disable built-in fetcher
      -- To enable schema matching, add schemastore.nvim (see jsonls.lua)
    },
  },
}
