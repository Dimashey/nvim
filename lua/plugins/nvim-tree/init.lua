local map = vim.keymap.set

map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<leader>ef", ":NvimTreeFindFile<CR>")

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
