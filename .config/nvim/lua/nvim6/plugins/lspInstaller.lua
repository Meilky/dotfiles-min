local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    server:setup({
			capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
			-- on_attach = on_attach,
			flags = {
			  debounce_text_changes = 150,
			}
		})
end)
