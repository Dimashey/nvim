local lspconfig = require "lspconfig"

lspconfig.pyright.setup({
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "strict", -- Change to "off" or "basic" if too strict
        autoImportCompletions = true,
      },
    },
  },
})
