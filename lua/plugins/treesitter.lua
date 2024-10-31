return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      require('nvim-treesitter.configs').setup({
        -- Essential parsers that are useful for most developers
        ensure_installed = {
          -- Neovim essentials
          "lua",          -- For your Neovim config
          "vim",          -- For vim files
          "vimdoc",       -- For vim help files

          -- Web development essentials
          "html",
          "css",
          "javascript",
          "typescript",
          "json",

          -- Common data formats
          "yaml",         -- For config files
          "markdown",     -- For documentation

          -- Shell scripting
          "bash",

          -- Git
          "gitignore",
          "gitcommit",

          -- Programming languages
          "python",
          "c"
        },

        -- Don't install parsers synchronously
        sync_install = false,

        -- Automatically install parser when entering a buffer
        auto_install = true,

        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },

        indent = {
          enable = true,
        },
      })
    end
  }
}
