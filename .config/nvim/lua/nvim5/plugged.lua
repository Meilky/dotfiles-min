local Plug = vim.fn['plug#']

vim.call("plug#begin", '~/.config/nvim/autoload/nvim5/')
	Plug('folke/tokyonight.nvim', {branch = 'main'})

	Plug('nvim-lua/plenary.nvim')
	Plug('nvim-telescope/telescope.nvim')

	Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

	Plug('neovim/nvim-lspconfig')
	Plug('glepnir/lspsaga.nvim')

	Plug('kyazdani42/nvim-web-devicons')
	Plug('akinsho/bufferline.nvim')

	Plug('hoob3rt/lualine.nvim')

	Plug('lukas-reineke/indent-blankline.nvim')

	Plug('hrsh7th/cmp-nvim-lsp')
	Plug('hrsh7th/cmp-buffer')
	Plug('hrsh7th/nvim-cmp')

	Plug('glepnir/lspsaga.nvim')

	Plug('L3MON4D3/LuaSnip')

	Plug('windwp/nvim-autopairs')

	Plug('norcalli/nvim-colorizer.lua')

	Plug('williamboman/nvim-lsp-installer')

	Plug('mhartington/formatter.nvim')
vim.call("plug#end")
