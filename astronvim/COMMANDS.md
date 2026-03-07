# AstroNvim Commands Cheat Sheet

## File Tree & Terminal
- `<Leader>e` - Toggle file explorer
- `<Leader>o` - Focus file explorer
- `<Leader>tf` - Toggle floating terminal
- `<Leader>th` - Toggle horizontal terminal
- `<Leader>tv` - Toggle vertical terminal

## Window Navigation
- `<Ctrl>h` - Move to left window (file tree)
- `<Ctrl>l` - Move to right window (editor)
- `<Ctrl>j` - Move to bottom window (terminal)
- `<Ctrl>k` - Move to top window (editor)
- `<Ctrl>w w` - Cycle through all windows

## Terminal Control
- `<Ctrl-\><Ctrl-n>` - Exit terminal mode to normal mode
- `:q` - Close terminal window (after exiting terminal mode)
- `<Leader>tf` - Toggle floating terminal on/off

## Tabs/Buffers
- `<Leader>ff` - Find and open files
- `]b` - Next buffer/tab
- `[b` - Previous buffer/tab
- `<Leader>c` - Close current buffer
- `<Leader>bb` - List all buffers

## Code Navigation
- `]m` - Next method/function
- `[m` - Previous method/function
- `<Leader>ls` - Document symbols (list all functions)
- `gd` - Go to definition
- `gr` - Go to references

## Debugging
- `<Leader>db` - Toggle breakpoint
- `<Leader>dc` - Continue/Start debugging
- `<Leader>ds` - Step over
- `<Leader>di` - Step into
- `<Leader>do` - Step out
- `<Leader>dq` - Close debugger
- `<Leader>du` - Toggle DAP UI

## Git Commands
- `<Leader>gg` - Git status
- `<Leader>gc` - Git commit
- `<Leader>gd` - Git diff current file
- `]c` - Next git hunk
- `[c` - Previous git hunk
- `<Leader>gh` - Preview hunk
- `<Leader>gs` - Stage hunk
- `<Leader>gl` - Git blame line

## Direct Commands
- `:Git` - Open git status
- `:Git commit` - Git commit
- `:messages` - Show Neovim messages
- `:Mason` - Open Mason package manager
- `:Lazy` - Open Lazy plugin manager

*Note: `<Leader>` is the Space key by default*