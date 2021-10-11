call plug#begin('~/.config/nvim/nvim4/plugged')
		" Theme
		Plug 'ghifarit53/tokyonight-vim'
		" Airline
		Plug 'vim-airline/vim-airline'
		
		Plug 'sheerun/vim-polyglot'
call plug#end()

" theming
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0

colorscheme tokyonight

let g:airline_theme = "tokyonight"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline#extensions#tabline#formatter = 'unique_tail'


" general settings
set nocompatible
set number relativenumber
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=0 noexpandtab
set wildmode=longest,full
set nowrap

set scrolloff=8
set signcolumn=yes
