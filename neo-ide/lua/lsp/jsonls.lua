-- Optional: add { "b0o/schemastore.nvim" } to plugins/lsp.lua for JSON schema completion
local ok, schemastore = pcall(require, "schemastore")

return {
  settings = {
    json = ok and {
      schemas  = schemastore.json.schemas(),
      validate = { enable = true },
    } or {},
  },
}
