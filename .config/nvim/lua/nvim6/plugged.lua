return require('packer').startup(function(use)
	-- Packer it self
	use { 'wbthomason/packer.nvim'}

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
	use { "rafamadriz/friendly-snippets" }

	-- Completion
	use { 'saadparwaiz1/cmp_luasnip' }
	use { "hrsh7th/cmp-path" }
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'hrsh7th/nvim-cmp' }
	use { 'onsails/lspkind-nvim' }
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

	-- Vim buffer line
	use { 'akinsho/bufferline.nvim' }

	-- Vim line
	use { 'nvim-lualine/lualine.nvim' }

	-- Lsp installer
	use { 'williamboman/nvim-lsp-installer' }
end)
