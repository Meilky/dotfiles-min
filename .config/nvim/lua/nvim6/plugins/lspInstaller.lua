local lsp_installer = require("nvim-lsp-installer")

local servers = {
	"pyright",
	"ccls",
	"vimls",
	"taplo",
	"tsserver",
	"cmake",
	"jsonls",
	"cssls",
	"html",
	"bashls",
	"dockerls",
	"rust_analyzer",
	"sumneko_lua",
	"yamlls"
}

for _, name in pairs(servers) do
	local server_is_found, server = lsp_installer.get_server(name)
	if server_is_found and not server:is_installed() then
		print("Installing " .. name)
		server:install()
	end
end

lsp_installer.on_server_ready(function(server)
    server:setup({
		capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
		flags = {
			debounce_text_changes = 150,
		}
	})
end)
