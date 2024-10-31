--------------------------------------------------------------------------------
-- Key Mapping Configuration
--------------------------------------------------------------------------------
local map = vim.keymap.set

-- Helper function for mappings
local function map_with_desc(mode, lhs, rhs, desc, opts)
  opts = opts or {}
  opts.desc = desc
  map(mode, lhs, rhs, opts)
end

--------------------------------------------------------------------------------
-- Normal Mode - Window Management
--------------------------------------------------------------------------------
-- Window navigation
map_with_desc('n', '<C-h>', '<C-w>h', 'Move to left window')
map_with_desc('n', '<C-j>', '<C-w>j', 'Move to below window')
map_with_desc('n', '<C-k>', '<C-w>k', 'Move to above window')
map_with_desc('n', '<C-l>', '<C-w>l', 'Move to right window')

-- Window resizing
map_with_desc('n', '<C-Up>', ':resize -2<CR>', 'Decrease window height')
map_with_desc('n', '<C-Down>', ':resize +2<CR>', 'Increase window height')
map_with_desc('n', '<C-Left>', ':vertical resize -2<CR>', 'Decrease window width')
map_with_desc('n', '<C-Right>', ':vertical resize +2<CR>', 'Increase window width')

-- Split commands
map_with_desc('n', '<leader>sh', ':split<CR>', 'Split horizontal')
map_with_desc('n', '<leader>sv', ':vsplit<CR>', 'Split vertical')
map_with_desc('n', '<leader>se', '<C-w>=', 'Split equal')
map_with_desc('n', '<leader>sc', ':close<CR>', 'Split close')

-- Split resizing
map_with_desc('n', '<leader>s,', ':vertical resize -5<CR>', 'Decrease width')
map_with_desc('n', '<leader>s.', ':vertical resize +5<CR>', 'Increase width')
map_with_desc('n', '<leader>s-', ':resize -5<CR>', 'Decrease height')
map_with_desc('n', '<leader>s+', ':resize +5<CR>', 'Increase height')

-- Tab management
map_with_desc('n', '<leader>tn', ':tabnew<CR>', 'New tab')
map_with_desc('n', '<leader>tc', ':tabclose<CR>', 'Close tab')
map_with_desc('n', '<leader>tp', ':tabprevious<CR>', 'Previous tab')
map_with_desc('n', '<leader>tf', ':tabnext<CR>', 'Forward tab')

-- Improved Line Navigation
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, desc = 'Move up (respects wrapping)' })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, desc = 'Move down (respects wrapping)' })
map('n', 'G', 'Gzz', { desc = 'Go to end of file and center' })
map('n', 'gg', 'ggzz', { desc = 'Go to beginning of file and center' })
map('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down and center' })
map('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up and center' })
map('n', 'n', 'nzzzv', { desc = 'Next search result and center' })
map('n', 'N', 'Nzzzv', { desc = 'Previous search result and center' })

--------------------------------------------------------------------------------
-- Normal Mode - File Operations
--------------------------------------------------------------------------------
map_with_desc('n', '<leader>w', ':w<CR>', 'Save file')
map_with_desc('n', '<leader>q', ':q<CR>', 'Quit')

map_with_desc('n', 'U', '<C-r>', 'Redo')

-------------------------------------------------------------------------------
-- Insert Mode
--------------------------------------------------------------------------------
map_with_desc('i', 'jk', '<ESC>', 'Exit insert mode')
map_with_desc('i', 'kj', '<ESC>', 'Exit insert mode')
map_with_desc('i', '<C-s>', '<ESC>:w<CR>', 'Save file')

-- Movement in Insert Mode
map('i', '<C-h>', '<Left>', { desc = 'Move left' })
map('i', '<C-l>', '<Right>', { desc = 'Move right' })
map('i', '<C-j>', '<Down>', { desc = 'Move down' })
map('i', '<C-k>', '<Up>', { desc = 'Move up' })

--------------------------------------------------------------------------------
-- Visual Mode
--------------------------------------------------------------------------------
map_with_desc('v', '>', '<gv', 'Decrease indent')
map_with_desc('v', '<', '>gv', 'Increase indent')

--------------------------------------------------------------------------------
-- Search improvements
--------------------------------------------------------------------------------
map_with_desc('n', '<ESC>', ':noh<CR>', 'Clear highlights')
map_with_desc('n', '<leader>r', ':%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>', 'Replace word under cursor')

--------------------------------------------------------------------------------
-- Terminal Mode - Consistency
--------------------------------------------------------------------------------
-- Terminal navigation (matches window navigation)
map_with_desc('t', '<ESC>', '<C-\\><C-n>', 'Exit terminal mode')
map_with_desc('t', '<C-h>', '<C-\\><C-n><C-w>h', 'Window left')
map_with_desc('t', '<C-j>', '<C-\\><C-n><C-w>j', 'Window down')
map_with_desc('t', '<C-k>', '<C-\\><C-n><C-w>k', 'Window up')
map_with_desc('t', '<C-l>', '<C-\\><C-n><C-w>l', 'Window right')

--------------------------------------------------------------------------------
-- Command Mode - Common Fixes
--------------------------------------------------------------------------------
-- Common Typos
vim.cmd([[
  cnoreabbrev W! w!
  cnoreabbrev Q! q!
  cnoreabbrev Qall! qall!
  cnoreabbrev Wq wq
  cnoreabbrev Wa wa
  cnoreabbrev wQ wq
  cnoreabbrev WQ wq
  cnoreabbrev W w
  cnoreabbrev Q q
  cnoreabbrev Qall qall
]])
