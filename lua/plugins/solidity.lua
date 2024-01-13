-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- both solidity and cairo have treesitter support
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "cairo", "solidity" })
      end
    end,
  },

  -- configure language servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- add cairo
        cairo_ls = {},
        -- disable old solidity LSP
        solidity = {
          autostart = false,
        },
        -- enable better solidity LSP (hardhat/foundry integration)
        solidity_ls_nomicfoundation = {},
      },
    },
  },

  -- also add vyper plugin - no language server or treesitter support
  {
    "vyperlang/vim-vyper",
  },
}
