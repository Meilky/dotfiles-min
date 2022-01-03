return require('packer').startup(function(use)
	use { 'folke/tokyonight.nvim' }
	use { 'nvim-lua/plenary.nvim' }
	use { 'neovim/nvim-lspconfig' }
	use { 'kyazdani42/nvim-web-devicons', opt = true }
	use { 'lukas-reineke/indent-blankline.nvim' }
	use { 'L3MON4D3/LuaSnip' } 
	use { 'saadparwaiz1/cmp_luasnip' }
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'hrsh7th/cmp-buffer' }
	use { 'hrsh7th/nvim-cmp' }
	use { 'windwp/nvim-autopairs' }
	use { 'norcalli/nvim-colorizer.lua' }
	use { 'mhartington/formatter.nvim' }
	use { 'onsails/lspkind-nvim' }

	use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use { 'tami5/lspsaga.nvim', requires = { {'neovim/nvim-lspconfig'} } }
	use { 'akinsho/bufferline.nvim' }
	use { 'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
	use { 'williamboman/nvim-lsp-installer', requires = { {'neovim/nvim-lspconfig'} } }
end)
