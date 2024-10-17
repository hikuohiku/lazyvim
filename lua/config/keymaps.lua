-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 折り返した行にjkで移動
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- <C-s>でフォーマット
vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>LazyFormat<CR>')

-- ターミナルでvimのC-hjklを無効化する。
vim.cmd([[
  tunmap <C-h>
  tunmap <C-j>
  tunmap <C-k>
  tunmap <C-l>
]])

-- ターミナルにボーダーを追加する。
local Util = require("lazyvim.util")
local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root(), border = "rounded" })
end
vim.keymap.set("n", "<leader>ft", lazyterm, { desc = "Terminal (root dir)" })
vim.keymap.set("n", "<C-/>", lazyterm, { desc = "Terminal (root dir)" })
vim.keymap.set("n", "<C-_>", lazyterm, { desc = "which_key_ignore" })
