vim.g.mapleader = ";"
vim.g.maplocalleader = ","

local remap = vim.api.nvim_set_keymap
local default = { noremap = true, silent = true }

local rmap = function(mode, key, f)
	remap(mode, key, f, default)
end

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
rmap("n", "<leader>gi", ":Lspsaga implement<CR>")
rmap("n", "<leader>gc", ":Lspsaga show_cursor_diagnostics<CR>")
rmap("n", "<leader>gl", ":Lspsaga show_line_diagnostics<CR>")
rmap("n", "<leader>gd", ":Lspsaga preview_definition<CR>")
rmap("n", "<leader>ga", ":Lspsaga code_action<CR>")

-- Buffer Line
rmap("n", "<leader>bh", ":BufferLineCycleNext<CR>")
rmap("n", "<leader>bl", ":BufferLineCyclePrev<CR>")
rmap("n", "<leader>bp", ":BufferLinePick<CR>")
rmap("n", "<leader>b1", ":BufferLineGoToBuffer 1<CR>")
rmap("n", "<leader>b2", ":BufferLineGoToBuffer 2<CR>")
rmap("n", "<leader>b3", ":BufferLineGoToBuffer 3<CR>")
rmap("n", "<leader>b4", ":BufferLineGoToBuffer 4<CR>")
rmap("n", "<leader>b5", ":BufferLineGoToBuffer 5<CR>")
rmap("n", "<leader>b6", ":BufferLineGoToBuffer 6<CR>")
rmap("n", "<leader>b7", ":BufferLineGoToBuffer 7<CR>")
rmap("n", "<leader>b8", ":BufferLineGoToBuffer 8<CR>")
rmap("n", "<leader>b9", ":BufferLineGoToBuffer 9<CR>")

-- Formatter
rmap("n", "<leader>F", ":Format<CR>")
