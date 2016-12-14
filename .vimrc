" Artie's VIM Config 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on " syntax highlighting on
colorscheme desert

filetype on " detect the type of file
filetype plugin on " load plugins for specific file types
filetype indent on " load indent settings for specific file types

let mapleader = ","
set nocompatible " get out of horrible vi-compatible mode
set history=50000 " How many lines of history to remember
set fileencodings=utf-8,latin2
set visualbell " no beeping!
set ruler "always show current position along the bottom
set whichwrap+=<,>,h,l " backscpace and cursor keys wrap to
set showmatch " show matching brackets
set mat=5 " how many tenths of a second to blink matching brackets
set wrapscan " wrap around file when searching
set incsearch " incremental search
set hlsearch " higlight search terms
set background=dark " using dark background
set autoindent " copy indent from current line when starting new line
set tabstop=4 " tab spacing
set shiftwidth=4 " unify
set softtabstop=4 " unify
set noexpandtab " use spaces instead of tabs
set nowrap " do not wrap lines


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype specific settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab

autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2 noexpandtab
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd Filetype sql setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd Filetype ruby setlocal ts=4 sts=4 sw=4 noexpandtab

" treat .rss files as XML
autocmd BufNewFile,BufRead *.rss setfiletype xml
" treat .md files as markdown
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" treat .tf files as terraform
autocmd BufNewFile,BufRead *.tf set filetype=terraform
autocmd FileType terraform setlocal ts=2 sts=2 sw=2 expandtab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatic Completion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Folded guibg=red guifg=Red cterm=bold ctermbg=DarkGrey ctermfg=DarkRed
hi FoldColumn guibg=grey78 gui=Bold guifg=DarkRed

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Miscellaneous convenience mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" switch to next window and resize
noremap <Leader>w <C-W><C-W>:res<cr>

