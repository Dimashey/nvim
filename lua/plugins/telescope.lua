return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- optional but recommended
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local builtin = require('telescope.builtin')

    -- Use git_files inside a git repo, otherwise fall back to find_files
    local function find_files()
      local is_git = vim.fn.systemlist('git rev-parse --is-inside-work-tree')[1] == 'true'
      if is_git then
        builtin.git_files()
      else
        builtin.find_files()
      end
    end

    vim.keymap.set('n', '<leader>ff', find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fs', builtin.git_status, { desc = 'Telescope git status' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  end
}
