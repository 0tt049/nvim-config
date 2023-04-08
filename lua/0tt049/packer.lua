-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.1',
		-- or,
		-- branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Color Theme
	use({ 'ellisonleao/gruvbox.nvim', as = 'gruvbox' })
	vim.cmd('colorscheme gruvbox')

	-- Treesitter
	use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use( 'nvim-treesitter/playground' )

	-- Harpoon
	use( 'theprimeagen/harpoon' )

	-- Undotree
	use( 'mbbill/undotree' )

	-- Fugitive
	use( 'tpope/vim-fugitive')

end)
