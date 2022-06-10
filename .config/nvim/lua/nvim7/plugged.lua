return require('packer').startup(function(use)
	-- Packer
	use { 'wbthomason/packer.nvim' }

	-- Theme
	use { 'folke/tokyonight.nvim' }

	-- Utils
	use { 'nvim-lua/plenary.nvim' }
	use { 'neovim/nvim-lspconfig' }
	use { 'kyazdani42/nvim-web-devicons', opt = true }

	-- Indent
	use { 'lukas-reineke/indent-blankline.nvim' }

	-- Snippets
	use { 'L3MON4D3/LuaSnip' }
	use { 'rafamadriz/friendly-snippets' }

	-- Completion
	use { 'saadparwaiz1/cmp_luasnip' }
	use { "hrsh7th/cmp-path" }
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'hrsh7th/nvim-cmp' }
	use { 'onsails/lspkind-nvim' }

	-- Trouble
	use { "folke/trouble.nvim" }

	-- Autopair
	use { 'windwp/nvim-autopairs' }

	-- Show colors
	use { 'norcalli/nvim-colorizer.lua' }

	-- Formating
	use { 'mhartington/formatter.nvim' }

	-- Telescope
	use { 'nvim-telescope/telescope.nvim' }

	-- Treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	-- Lines
	use { 'ojroques/nvim-hardline' }
	use { 'ojroques/nvim-bufbar' }

	-- Lsp installer
	use { 'williamboman/nvim-lsp-installer' }

	-- Function signature
	use { "ray-x/lsp_signature.nvim" }

	-- Git signs
	use { 'lewis6991/gitsigns.nvim' }

	-- Buffer delete
	use { 'ojroques/nvim-bufdel' }
end)
