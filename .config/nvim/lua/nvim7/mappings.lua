vim.g.mapleader = ";"
vim.g.maplocalleader = ","

local remap = vim.api.nvim_set_keymap
local default = { noremap = true, silent = true }

local rmap = function(mode, key, f)
	remap(mode, key, f, default)
end

-- Telescope mappings
rmap("n", "<leader>ff", ":Telescope find_files<CR>")
rmap("n", "<leader>fr", ":Telescope lsp_references<CR>")
rmap("n", "<leader>fi", ":Telescope lsp_implementations<CR>")
rmap("n", "<leader>fd", ":Telescope lsp_definitions<CR>")
rmap("n", "<leader>fa", ":Telescope lsp_code_actions<CR>")
rmap("n", "<leader>fb", ":Telescope buffers<CR>")

-- LspSaga mappings
rmap("n", "<leader>gg", ":lua vim.lsp.buf.hover()<CR>")
rmap("n", "<leader>gr", ":lua vim.lsp.buf.rename()<CR>")

-- Buffer Line
rmap("n", "<leader>bl", ":BufferLineCycleNext<CR>")
rmap("n", "<leader>bh", ":BufferLineCyclePrev<CR>")

-- Formatter
rmap("n", "<leader>FL", ":lua vim.lsp.buf.formatting()<CR>")
rmap("n", "<leader>FF", ":Format<CR>")
