-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  {
    "ellisonleao/gruvbox.nvim",
    opts = { contrast = "hard" },
  },
  {
    "folke/tokyonight.nvim",
    opts = { style = "night" },
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      theme = "wave",
      background = {
        dark = "wave",
        light = "lotus",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "tokyonight" },
  },
}
