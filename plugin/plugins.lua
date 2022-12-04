-- These are my Plugins file.
vim.cmd[[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerInstall
	augroup end
]]

return require("packer").startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'gruvbox-community/gruvbox'
	use 'nvim-lualine/lualine.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'TimUntersberger/neogit'
	use 'lewis6991/gitsigns.nvim'
	use 'b0o/mapx.nvim'
	use 'kyazdani42/nvim-tree.lua'
	use 'kyazdani42/nvim-web-devicons'
	use { 'akinsho/bufferline.nvim', tag = 'v2.*' }
	use 'sheerun/vim-polyglot'
	use 'nvim-lua/plenary.nvim'
	use 'neovim/nvim-lspconfig'
	use 'glepnir/lspsaga.nvim'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neoclide/coc.nvim'
	use 'nvim-treesitter/nvim-treesitter'
end)
