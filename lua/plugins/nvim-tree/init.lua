return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    local nvimtree = require "nvim-tree"

    nvimtree.setup({
        view = {
          width = 60,
        },
    })
  end,
}
