-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- help ja
vim.o.helplang = 'ja,en'

vim.g.ayucolor = "light"
vim.cmd("highlight link LspInlayHint Comment")

vim.go.background = "light"

vim.o.swapfile = false

vim.g.autoformat = false

-- neovide settings
if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_padding_top = 20
  vim.g.neovide_padding_bottom = 20
  vim.g.neovide_padding_right = 20
  vim.g.neovide_padding_left = 20
  vim.opt.mousescroll = "ver:10"
end
