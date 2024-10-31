return {
  {
    'neovim/nvim-lspconfig',
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      'williamboman/mason.nvim',           -- Manages external editor tooling (LSP servers, formatters, etc.)
      'williamboman/mason-lspconfig.nvim', -- Bridges mason.nvim with nvim-lspconfig
    },
    config = function()
      -- Set up Mason first
      require('mason').setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })

      -- Mason LSP config
      require('mason-lspconfig').setup({
        -- Servers that Mason should automatically install
        ensure_installed = {
          'lua_ls',   -- Lua
        },
        automatic_installation = true,
      })

      -- LSP settings
      local lspconfig = require('lspconfig')

      -- Key bindings for LSP functions
      vim.keymap.set('n', 'gD',vim.lsp.buf.declaration, { desc = 'Go to declaration' })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover Documentation' })
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename' })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code action' })
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Go to references' })

      -- Configure lua language server for neovim
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = {'vim'},
            },
          },
        },
      })
    end,
  }
}
