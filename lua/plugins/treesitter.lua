return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  build = ':TSUpdate',
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "json",
        "go",
        "python",
        "bash",
        "yaml",
        "markdown",
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
