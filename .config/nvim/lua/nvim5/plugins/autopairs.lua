require('nvim-autopairs').setup({
	check_ts = true,
	disable_filetype = { "TelescopePrompt" },
})

require("nvim-autopairs.completion.cmp").setup({
	map_cr = true,
	map_complete = true,
	auto_select = true,
	insert = false
})
