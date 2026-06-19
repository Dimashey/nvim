return {
  "projekt0n/github-nvim-theme",
  config = function(_, opts)
    local theme = require "github-theme"

    theme.setup {}

    vim.cmd('colorscheme github_dark_tritanopia')
  end,
}
