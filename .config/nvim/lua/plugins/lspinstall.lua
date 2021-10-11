local on_attach = function(client, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
end

local function setup_servers()
	require('lspinstall').setup({})
	local servers = require('lspinstall').installed_servers()
	for _, server in pairs(servers) do
		require('lspconfig')[server].setup({
			capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
			on_attach = on_attach,
			flags = {
			  debounce_text_changes = 150,
			}
		})
	end
end



setup_servers()

require('lspinstall').post_install_hook = function ()
	setup_servers()
	vim.cmd("bufdo e")
end
