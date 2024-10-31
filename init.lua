--------------------------------------------------------------------------------
-- Early initialization
--------------------------------------------------------------------------------
-- Set leader key early
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Essential settings for UI
vim.opt.termguicolors = true

--------------------------------------------------------------------------------
-- Bootstrap lazy.nvim
--------------------------------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--------------------------------------------------------------------------------
-- Load Configurations
--------------------------------------------------------------------------------

require("core.options")
require("core.keymaps")
require("core.autocommands")
require("lazy").setup("plugins") -- Load plugins


