local opt = vim.opt

-- UI
opt.number = true          -- Show line numbers
opt.relativenumber = true  -- Show relative line numbers
opt.cursorline = false    -- Highlight current line
opt.signcolumn = "no"    -- Always show sign column
opt.showmatch = true      -- Highlight matching brackets
opt.showmode = false      -- Don't show mode in command line
opt.termguicolors = true  -- Enable 24-bit RGB colors
opt.conceallevel = 0       -- Show text normally
opt.showmatch = true      -- Highlight matching brackets

-- Indentation
opt.expandtab = true      -- Use spaces instead of tabs
opt.shiftwidth = 2        -- Shift 2 spaces when tab
opt.tabstop = 2          -- 1 tab == 2 spaces
opt.smartindent = true    -- Autoindent new lines
opt.autoindent = true    -- Copy indent from current line

-- Performance
opt.lazyredraw = true     -- Don't redraw while executing macros
opt.updatetime = 250      -- Faster completion
opt.ttyfast = true      -- Faster terminal connection
opt.timeout = true       -- Enable timeout for mappings
opt.timeoutlen = 300     -- Time to wait for mapped sequence
opt.ttimeoutlen = 10     -- Time to wait for key code sequence

-- Search
opt.hlsearch = false      -- Don't highlight search results
opt.ignorecase = true     -- Ignore case in search patterns
opt.smartcase = true      -- Override ignorecase if pattern contains uppercase
opt.incsearch = true     -- Show search matches as you type

-- Files
opt.fileencoding = "utf-8"  -- File encoding
opt.swapfile = false        -- Don't create swap files
opt.undofile = true         -- Enable persistent undo
opt.backup = false          -- Don't create backup files
opt.writebackup = false     -- Don't create backup files while editing
opt.autoread = true     -- Auto reload changed files

-- Windows
opt.splitbelow = true      -- Horizontal splits below
opt.splitright = true      -- Vertical splits to the right
opt.scrolloff = 8          -- Lines of context around cursor

-- Completion
opt.completeopt = {
  "menu", -- Better completion experience
  "menuone",
  "noselect",
  "noinsert"
}

-- System Interaction
opt.clipboard = "unnamedplus"  -- Use system clipboard
opt.mouse = "a"               -- Enable mouse in all modes
opt.mousemoveevent = true     -- Enable mouse move events
opt.backspace = "indent,eol,start"  -- Make backspace work as expected

--------------------------------------------------------------------------------
-- Quality of Life Options
--------------------------------------------------------------------------------


