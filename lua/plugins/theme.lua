return {
  "vague-theme/vague.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local vague = require "vague"

    vague.setup()

    vim.cmd("colorscheme vague")
  end
}
