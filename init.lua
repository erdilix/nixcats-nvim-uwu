-- re-typed from gemini
local nixCats = require('nixCats')

vim.opt.number = true
vim.opt.relativenumber = true
-- set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Check if the 'general' category is enabled (it is in the flake.nix)
if nixCats('general') then
--	require('plugins.treesitter')
	require('plugins.telescope')
	require('plugins.flash')
	require('plugins.yazi')
	require('plugins.neotree')
	require('lspconfig').marksman.setup{}
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
