return {
  -- amongst your other plugins
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      -- toggleterm.nvim setup
      local toggleterm = require "toggleterm"

      toggleterm.setup({
        size = function(term)
          if term.direction == "horizontal" then
            return 15
          elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
          end
        end,
        open_mapping = [[<c-\>]], -- Ctrl+t to toggle
        hide_numbers = true,
        shade_terminals = true,
        start_in_insert = true,
        insert_mappings = true,
        terminal_mappings = true,
        persist_size = true,
        direction = "horizontal", -- default: float | horizontal | vertical
        close_on_exit = true,
        float_opts = {
          border = "curved",
        },
      })

      -- Keymaps
      local function map(mode, lhs, rhs, opts)
        vim.keymap.set(mode, lhs, rhs, opts or { noremap = true, silent = true })
      end

      -- Toggle horizontal / vertical splits
      map("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>")
      map("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>")

      -- Navigate out of terminal without closing it
      map("t", "<esc>", [[<C-\><C-n>]])
      map("t", "jk", [[<C-\><C-n>]]) -- optional comfort alias

      -- Move between windows while in terminal insert mode
      map("t", "<C-h>", [[<Cmd>wincmd h<CR>]])
      map("t", "<C-j>", [[<Cmd>wincmd j<CR>]])
      map("t", "<C-k>", [[<Cmd>wincmd k<CR>]])
      map("t", "<C-l>", [[<Cmd>wincmd l<CR>]])
    end
  },

}
