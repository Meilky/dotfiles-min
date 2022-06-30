vim.g.mapleader = ";"
vim.g.maplocalleader = ","

local remap = vim.api.nvim_set_keymap
local default = { noremap = true, silent = true }

local rmap = function(mode, key, f)
	remap(mode, key, f, default)
end

rmap("n", "<leader>ff", ":Telescope find_files<CR>")
rmap("n", "<leader>fb", ":Telescope buffers<CR>")

rmap("n", "<leader>gg", ":lua vim.lsp.buf.hover()<CR>")
rmap("n", "<leader>gr", ":lua vim.lsp.buf.rename()<CR>")
rmap("n", "<leader>ga", ":lua vim.lsp.buf.code_action()<CR>")
rmap("n", "<leader>fr", ":lua vim.lsp.buf.references()<CR>")
rmap("n", "<leader>fd", ":lua vim.lsp.buf.definition()<CR>")
rmap("n", "<leader>fi", ":lua vim.lsp.buf.implementation()<CR>")

rmap("n", "<leader>FL", ":lua vim.lsp.buf.formatting()<CR>")
rmap("n", "<leader>FF", ":Format<CR>")

rmap("n", "<leader>ws", ":split<CR>")
rmap("n", "<leader>wv", ":vsplit<CR>")
rmap("n", "<leader>wh", "<C-W>h")
rmap("n", "<leader>wj", "<C-W>j")
rmap("n", "<leader>wk", "<C-W>k")
rmap("n", "<leader>wl", "<C-W>l")
rmap("n", "<leader>wH", ":vertical resize +5<cr>")
rmap("n", "<leader>wJ", ":resize -5<CR>")
rmap("n", "<leader>wK", ":resize +5<CR>")
rmap("n", "<leader>wL", ":vertical resize -5<cr>")
rmap("n", "<leader>w-", "<C-W>_")
rmap("n", "<leader>w=", "<C-W>=")
rmap("n", "<leader>wr", "<C-W>R")
rmap("n", "<leader>wtj", "<C-W>t<C-W>K")
rmap("n", "<leader>wtl", "<C-W>t<C-W>H")

rmap("n", "<leader>bd", ":BufDel<CR>")
