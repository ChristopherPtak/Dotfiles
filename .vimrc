
" Plugins

call plug#begin()

" Decoration
Plug 'catppuccin/vim',        {'as': 'catppuccin'}
Plug 'itchyny/lightline.vim', {'as': 'lightline'}

" Editing shortcuts
Plug 'tpope/vim-commentary', {'as': 'commentary'}

call plug#end()


" Set indentation and syntax

filetype indent off
syntax on

set tabstop=8
set expandtab

set nocindent
set nosmartindent
set noautoindent


" For ease of navigation

set whichwrap=h,l


" Line numbering
" Ctrl-N to toggle relative line numbers

set number
nnoremap <C-n> :set relativenumber!<CR>


" Enable colorscheme with transparent background

colorscheme catppuccin_mocha
highlight Normal     guibg=NONE ctermbg=NONE
highlight CursorLine guibg=NONE ctermbg=NONE
highlight Comment    cterm=italic


" Enable Lightline

set noshowmode
set laststatus=2

let g:lightline = {'colorscheme': 'catppuccin_mocha'}

