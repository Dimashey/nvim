vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help)
vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder)
vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder)

vim.keymap.set('n', '<space>wl', function()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end)

vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition)

vim.keymap.set('n', '<space>rn', function()
  vim.lsp.buf.rename()
  vim.cmd("wa")
end)


vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)

vim.keymap.set('n', '<space>f', function()
  local conform = require "conform"

  conform.format({ async = true, lsp_format = "fallback" })
end)

vim.keymap.set('n', '<space>e', function()
  vim.diagnostic.open_float({ width = 80 })
end)
