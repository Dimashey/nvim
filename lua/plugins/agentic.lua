return {
  'carlos-algms/agentic.nvim',
  opts = {
    -- Any ACP-compatible provider works. Built-in: "claude-agent-acp" | "gemini-acp" | "codex-acp" | "opencode-acp" | "cursor-acp" | "copilot-acp" | "auggie-acp" | "mistral-vibe-acp" | "cline-acp" | "goose-acp" | "kiro-acp" | "pi-acp"
    provider = "claude-agent-acp", -- setting the name here is all you need to get started
  },
  keys = {
    {
      "<leader>]",
      function()
        local agentic = require("agentic")

        agentic.toggle()
      end,
      mode = { "n", "v", "i" },
      desc = "Toggle Agentic Chat"
    },
    {
      "<leader>[",
      function()
        local agentic = require("agentic")

        agentic.new_session()
      end,
      mode = { "n", "v", "i" },
      desc = "New Agentic Session"
    },
    {
      "<leader>r", -- ai Restore
      function()
        local agentic = require("agentic")

        agentic.restore_session()
      end,
      desc = "Agentic Restore session",
      silent = true,
      mode = { "n", "v", "i" },
    },
    {
      "<leader>s",
      function()
        local agentic = require("agentic")

        agentic.add_selection_or_file_to_context()
      end,
      mode = { "n", "v" },
      desc = "Add file or selection to Agentic to Context"
    },
  },
}
