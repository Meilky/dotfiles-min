local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')

require('nvim-autopairs').setup({
	check_ts = true,
	disable_filetype = { "TelescopePrompt" },
})

cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))
