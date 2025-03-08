local opt = vim.opt

-- UI
opt.number = true        -- Show line numbers
opt.relativenumber = true -- Relative line numbers
opt.termguicolors = true -- Enable 24-bit colors
opt.cursorline = true    -- Highlight cursor line
opt.scrolloff = 8        -- Keep 8 lines above/below cursor
opt.signcolumn = "yes"   -- Always show sign column

-- Tabs & Indentation
opt.expandtab = true     -- Use spaces instead of tabs
opt.shiftwidth = 2       -- Shift width
opt.tabstop = 2          -- Tab width
opt.smartindent = true   -- Auto-indent

-- Searching
opt.ignorecase = true    -- Case insensitive search
opt.smartcase = true     -- Case-sensitive if uppercase used
opt.hlsearch = false     -- Don't highlight search results
opt.incsearch = true     -- Show search matches while typing

-- Behavior
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.undofile = true          -- Persistent undo history
