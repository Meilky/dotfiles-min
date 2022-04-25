require('formatter').setup({
  filetype = {
    javascript = {
		function()
			return {
				exe = "prettier",
				args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--vue-indent-script-and-style','--use-tabs','--trailing-comma all','--tab-width 4', '--print-width 120','--bracket-same-line','--arrow-parens always'},
				stdin = true
			}
		end
    },
    typescript = {
		function()
			return {
				exe = "prettier",
				args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--vue-indent-script-and-style','--use-tabs','--trailing-comma all','--tab-width 4', '--print-width 120','--bracket-same-line','--arrow-parens always'},
				stdin = true
			}
		end
    },
    json = {
		function()
			return {
				exe = "prettier",
				args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--vue-indent-script-and-style','--use-tabs','--trailing-comma all','--tab-width 4', '--print-width 120','--bracket-same-line','--arrow-parens always'},
				stdin = true
			}
		end
    },
    markdown = {
		function()
			return {
				exe = "prettier",
				args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--vue-indent-script-and-style','--use-tabs','--trailing-comma all','--tab-width 4', '--print-width 120','--bracket-same-line','--arrow-parens always'},
				stdin = true
			}
		end
    },
    graphql = {
		function()
			return {
				exe = "prettier",
				args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--vue-indent-script-and-style','--use-tabs','--trailing-comma all','--tab-width 4', '--print-width 120','--bracket-same-line','--arrow-parens always'},
				stdin = true
			}
		end
    },
    html = {
		function()
			return {
				exe = "prettier",
				args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--vue-indent-script-and-style','--use-tabs','--trailing-comma all','--tab-width 4', '--print-width 120','--bracket-same-line','--arrow-parens always'},
				stdin = true
			}
		end
    },
    css = {
		function()
			return {
				exe = "prettier",
				args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--vue-indent-script-and-style','--use-tabs','--trailing-comma all','--tab-width 4', '--print-width 120','--bracket-same-line','--arrow-parens always'},
				stdin = true
			}
		end
    },
	scss = {
		function()
			return {
				exe = "prettier",
				args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--vue-indent-script-and-style','--use-tabs','--trailing-comma all','--tab-width 4', '--print-width 120','--bracket-same-line','--arrow-parens always'},
				stdin = true
			}
		end
    },
	less = {
		function()
			return {
				exe = "prettier",
				args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--vue-indent-script-and-style','--use-tabs','--trailing-comma all','--tab-width 4', '--print-width 120','--bracket-same-line','--arrow-parens always'},
				stdin = true
			}
		end
    },
  }
})
