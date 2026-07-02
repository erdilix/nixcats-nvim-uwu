-- re-typed from gemini
local nixCats = require('nixCats')

vim.opt.number = true
vim.opt.relativenumber = true
-- set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = "Show references" })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Hover info" })
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = "Code actions" })


vim.lsp.enable("marksman")
-- Check if the 'general' category is enabled (it is in the flake.nix)
if nixCats('general') then
--	require('plugins.treesitter')
	require('plugins.telescope')
	require('plugins.flash')
	require('plugins.yazi')
	require('plugins.neotree')
	require("transparent").setup({
		extra_groups = {
			"NormalFloat",
			"FloatBorder",
			"NeoTreeNormal",
			"NeoTreeNormalNC",
			"NeoTreeWinSeperator",
		},
	})
end
