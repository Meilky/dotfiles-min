local cmp = require('cmp')

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end
	},
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'ultisnips' },
		{ name = 'path' },
		{ name = 'buffer' },
	},
	mapping = {
		['<C-k>'] = cmp.mapping.scroll_docs(-4),
		['<C-j>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
		['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		}),
		['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
		['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
	},
	symbol_map = {
		Text = "T",
		Method = "M",
		Function = "F",
		Constructor = "C",
		Field = "F",
		Variable = "V",
		Class = "C",
		Interface = "I",
		Module = "M",
		Property = "P",
		Unit = "U",
		Value = "V",
		Enum = "E",
		Keyword = "K",
		Snippet = "S",
		Color = "C",
		File = "F",
		Reference = "R",
		Folder = "F",
		EnumMember = "EM",
		Constant = "C",
		Struct = "S",
		Event = "E",
		Operator = "O",
		TypeParameter = "TP"
	},
	preset = 'default',
	formatting = {
		format = require("lspkind").cmp_format({
			with_text = true,
			maxwidth = 50,
			before = function (entry, vim_item)
				return vim_item
			end
		})
	}
})
