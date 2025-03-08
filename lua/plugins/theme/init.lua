return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  config = function()
    local theme = require "github-theme"

    theme.setup()

    vim.cmd('colorscheme github_dark_dimmed')
  end
}

