vim.lsp.config['pyright'] = {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "strict", -- Change to "off" or "basic" if too strict
        autoImportCompletions = true,
      },
    },
  },
}

vim.lsp.enable('pyright')
