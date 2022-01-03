require('telescope').setup({
	pickers = {
		find_files = {
			hidden = true,
			find_command = {'rg', '--files', '--hidden', '-g', '!.git' }
		}
	}
})
