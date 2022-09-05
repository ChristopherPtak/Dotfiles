" My Vim configuration
" (C) 2022 Christopher Ptak

syntax on

" Disable auto-indentation
set nocindent
set nosmartindent
set noautoindent

" Wrap at end of line
set whichwrap=h,l

" Default indent
set tabstop=8 expandtab

" Specialize indent by file type
autocmd FileType python setlocal tabstop=4 expandtab
autocmd FileType rust   setlocal tabstop=4 expandtab
autocmd FileType scheme setlocal tabstop=2 expandtab

" Enable line numbering
set number
highlight LineNr ctermfg=DarkGrey

" Use Control+L to toggle relative line numbers
nmap <C-L> :set invrelativenumber<CR>

