return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local treesitter = require "nvim-treesitter"

    treesitter.setup({
      ensure_installed = {
        "lua",
        "typescript",
        "javascript",
        "go",
        "json",
        "bash",
        "sql",
      },

      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },
    })
  end
}
