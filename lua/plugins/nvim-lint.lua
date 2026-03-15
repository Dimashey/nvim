return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require "lint"

    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
    }

    -- Lint on enter, save, and leaving insert mode
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      callback = function()
        -- Only lint if an eslint config exists in the project
        local eslint_configs = {
          ".eslintrc",
          ".eslintrc.js",
          ".eslintrc.cjs",
          ".eslintrc.json",
          ".eslintrc.yaml",
          ".eslintrc.yml",
          "eslint.config.js",
          "eslint.config.mjs",
          "eslint.config.cjs",
        }

        local cwd = vim.fn.getcwd()
        local has_config = false

        for _, config in ipairs(eslint_configs) do
          if vim.fn.filereadable(cwd .. "/" .. config) == 1 then
            has_config = true
            break
          end
        end

        if has_config then
          lint.try_lint()
        end
      end,
    })
  end,
}
