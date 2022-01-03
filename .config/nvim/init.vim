" Load the correct config for the correct version

if has("nvim-0.6")
	luafile $HOME/.config/nvim/nvim6/init.lua
elseif has("nvim-0.5")
	luafile $HOME/.config/nvim/nvim5/init.lua
elseif has("nvim-0.4")
	source $HOME/.config/nvim/nvim4/init.vim
endif
