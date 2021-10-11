vim.g.mapleader = ";"
vim.g.maplocalleader = ","

local remap = vim.api.nvim_set_keymap
local default = { noremap = true, silent = true }

local rmap = function(mode, key, f)
	remap(mode, key, f, default)
end

-- yank till end of line
rmap("n", "Y", "y$")

-- Telescope mappings
rmap("n", "<leader>ff", ":Telescope find_files<CR>")
rmap("n", "<leader>fg", ":Telescope live_grep<CR>")
rmap("n", "<leader>fb", ":Telescope buffers<CR>")
rmap("n", "<leader>fh", ":Telescope help_tags<CR>")

-- LspSaga mappings
rmap("n", "<leader>gh", ":Lspsaga lsp_finder<CR>")
rmap("n", "<leader>gg", ":Lspsaga hover_doc<CR>")
rmap("n", "<leader>gs", ":Lspsaga signature_help<CR>")
rmap("n", "<leader>gr", ":Lspsaga rename<CR>")
rmap("n", "<leader>gd", ":Lspsaga preview_definition<CR>")
rmap("n", "<leader>ga", ":Lspsaga code_action<CR>")
