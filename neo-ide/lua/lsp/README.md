# Adding a new LSP server

1. **Install the server** — add its name to `ensure_installed` in `lua/plugins/lsp.lua`:
   ```lua
   ensure_installed = { ..., "clangd" }
   ```

2. **Configure it** (optional) — create `lua/lsp/clangd.lua` returning a table:
   ```lua
   return {
     cmd = { "clangd", "--background-index", "--clang-tidy" },
     settings = { ... },
   }
   ```
   If the file doesn't exist the server starts with sensible defaults from `nvim-lspconfig`.

3. **Restart Neovim** — Mason auto-installs, the handler picks up the new file.

## Available keys (all buffers with an LSP attached)

| Key           | Action                  |
|---------------|-------------------------|
| `K`           | Hover docs              |
| `gd`          | Go to definition (fzf)  |
| `gr`          | References (fzf)        |
| `gi`          | Implementations (fzf)   |
| `gD`          | Go to declaration       |
| `<leader>ca`  | Code action             |
| `<leader>rn`  | Rename symbol           |
| `<leader>lf`  | Format buffer           |
| `<leader>li`  | LSP info                |
| `[d` / `]d`   | Prev / next diagnostic  |
| `<leader>e`   | Show diagnostic float   |
