# Neovim Keymaps

> `<leader>` is typically `\` or `,` depending on your config.

## Window Navigation

| Key | Mode | Action |
|-----|------|--------|
| `<C-h>` | Normal | Move to left window |
| `<C-j>` | Normal | Move to bottom window |
| `<C-k>` | Normal | Move to top window |
| `<C-l>` | Normal | Move to right window |

## Editing

| Key | Mode | Action |
|-----|------|--------|
| `<leader>h` | Normal | Clear search highlights |
| `<A-j>` | Normal | Move line down |
| `<A-k>` | Normal | Move line up |
| `<A-j>` | Visual | Move selection down |
| `<A-k>` | Visual | Move selection up |

## File Explorer (nvim-tree)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>eo` | Normal | Toggle file explorer |
| `<leader>ef` | Normal | Reveal current file in explorer |

## Telescope (Fuzzy Finder)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ff` | Normal | Find git-tracked files |
| `<leader>fg` | Normal | Live grep (search in files) |
| `<leader>fs` | Normal | Git status files |
| `<leader>fb` | Normal | List open buffers |
| `<leader>fh` | Normal | Search help tags |

## LSP

| Key | Mode | Action |
|-----|------|--------|
| `gD` | Normal | Go to declaration |
| `gd` | Normal | Go to definition |
| `K` | Normal | Hover documentation |
| `gi` | Normal | Go to implementation |
| `gr` | Normal | Find references |
| `<C-k>` | Normal | Signature help |
| `<space>D` | Normal | Go to type definition |
| `<space>rn` | Normal | Rename symbol (and save all) |
| `<space>ca` | Normal/Visual | Code action |
| `<space>f` | Normal | Format file (async) |
| `<space>wa` | Normal | Add workspace folder |
| `<space>wr` | Normal | Remove workspace folder |
| `<space>wl` | Normal | List workspace folders |
