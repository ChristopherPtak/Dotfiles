
" Plugins

call plug#begin()

" Decoration
Plug 'catppuccin/vim',        {'as': 'catppuccin'}
Plug 'itchyny/lightline.vim', {'as': 'lightline'}

" Editing shortcuts
Plug 'tpope/vim-commentary', {'as': 'commentary'}

" Return to last edit when file opens
Plug 'farmergreg/vim-lastplace', {'as': 'lastplace'}

call plug#end()

function! IsPluginInstalled(name)
    return has_key(g:plugs, a:name) && isdirectory(g:plugs[a:name].dir)
endfunction


" Set indentation and syntax

syntax on

filetype indent off

set expandtab
set tabstop=8

set nocindent
set noautoindent
set nosmartindent

set nowrap


" For ease of navigation

set whichwrap=h,l


" Line numbering
" Ctrl-N to toggle relative line numbers

set number
nnoremap <C-n> :set relativenumber!<CR>

