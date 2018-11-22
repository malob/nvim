set encoding=utf-8
scriptencoding utf-8

" ================
" BASIC VIM CONFIG
" ================

set updatetime=100
let mapleader = '`'
set autochdir

" Package manager initialization
runtime bundle/vim-pathogen/autoload/pathogen.vim " so that Pathogen can live in bundle folder
execute pathogen#infect()
filetype plugin indent on

" Setup color scheme
set termguicolors        " truecolor support
colorscheme NeoSolarized " modified Solazized theme for better truecolor support
set background=dark

" UI settings
set number		       " show line numbers
set cursorline       " highlight current line
set signcolumn=yes   " always display sign column
set linebreak        " soft wraps on words not individual chars
set noshowmode

" Tab behavior
set expandtab 	 " Convert tabs to spaces
set tabstop=2
set shiftwidth=2

" NeoVim terminal
augroup neovimTerm
  au TermOpen * if &buftype == 'terminal' | :set nonumber | :set signcolumn=no | endif " no signcolum or line numebers in terminal
augroup END
tnoremap <ESC> <C-\><C-n>                                        " use ESC to enter normal mode in terminal

" Tabs and panes config
execute 'source' '~/.config/nvim/tabs-and-panes.vim'

" Disable arrow keys in insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>


" ==========
" UI PLUGINS
" ==========

" Airline statusline
" https://github.com/vim-airline/vim-airline
execute 'source' '~/.config/nvim/airline-config.vim'

" GitGutter
" https://github.com/airblade/vim-gitgutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_added = '┃'
let g:gitgutter_sign_modified = g:gitgutter_sign_added
let g:gitgutter_sign_removed = g:gitgutter_sign_added


" ======================================
" GENERAL COMPLETION AND LINTING PLUGINS
" ======================================

" ALE asyncronous linter config
" https://github.com/w0rp/ale
execute 'source' '~/.config/nvim/ale-config.vim'

" Deoplete autocompletion engine
" https://github.com/Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1

" LanguageClient
" https://github.com/autozimu/LanguageClient-neovim
let g:LanguageClient_diagnosticsEnable=1
let g:LanguageClient_serverCommands = {
  \ 'lua': ['/usr/local/bin/lua-lsp'],
  \ 'haskell': ['/Users/malo/.local/bin/hie-wrapper']
\ }
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
map <Leader>lk :call LanguageClient#textDocument_hover()<CR>
map <Leader>lg :call LanguageClient#textDocument_definition()<CR>
map <Leader>lr :call LanguageClient#textDocument_rename()<CR>
map <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
map <Leader>lb :call LanguageClient#textDocument_references()<CR>
map <Leader>la :call LanguageClient#textDocument_codeAction()<CR>
map <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>

" Supertap (tab through autocompletions)
" https://github.com/ervandew/supertab
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

" UltiSnips config
" https://github.com/SirVer/ultisnips
let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'


" ===========================
" WRITING AND MARKDOWN CONFIG
" ===========================

" vim-markdown config
" https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 2
set conceallevel=2

" vim-pencil config
" https://github.com/reedes/vim-pencil
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
let g:airline_section_x = '%{PencilMode()}'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END


" ==============
" HASKELL CONFIG
" ==============

" haskell-vim config
" https://github.com/neovimhaskell/haskell-vim.git
let g:haskell_indent_if = 2
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2

" Intero config
" https://github.com/parsonsmatt/intero-neovim
"let g:intero_use_neomake = 0
"augroup interoMaps
"  au!
"  " Maps for intero. Restrict to Haskell buffers so the bindings don't collide.
"
"  " Background process and window management
"  au FileType haskell nnoremap <silent> <leader>is :InteroStart<CR>
"  au FileType haskell nnoremap <silent> <leader>ik :InteroKill<CR>
"
"  " Open intero/GHCi split horizontally
"  au FileType haskell nnoremap <silent> <leader>io :InteroOpen<CR>
"  " Open intero/GHCi split vertically
"  au FileType haskell nnoremap <silent> <leader>iov :InteroOpen<CR><C-W>H
"  au FileType haskell nnoremap <silent> <leader>ih :InteroHide<CR>
"
"  " Reloading (pick one)
"  " Automatically reload on save
"  au BufWritePost *.hs InteroReload
"  " Manually save and reload
"  au FileType haskell nnoremap <silent> <leader>wr :w \| :InteroReload<CR>
"
"  " Load individual modules
"  au FileType haskell nnoremap <silent> <leader>il :InteroLoadCurrentModule<CR>
"  au FileType haskell nnoremap <silent> <leader>if :InteroLoadCurrentFile<CR>
"
"  " Type-related information
"  " Heads up! These next two differ from the rest.
"  au FileType haskell map <silent> <leader>t <Plug>InteroGenericType
"  au FileType haskell map <silent> <leader>T <Plug>InteroType
"  au FileType haskell nnoremap <silent> <leader>it :InteroTypeInsert<CR>
"
"  " Navigation
"  au FileType haskell nnoremap <silent> <leader>jd :InteroGoToDef<CR>
"
"  " Managing targets
"  " Prompts you to enter targets (no silent):
"  au FileType haskell nnoremap <leader>ist :InteroSetTargets<SPACE>
"augroup END

" Haskell competions using neco-ghc config
" https://github.com/eagletmt/neco-ghc
let g:haskellmode_completion_ghc = 0	" Disable haskell-vim omnifunc
"augroup necoGHC
"  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
"augroup END
"let g:necoghc_enable_detailed_browse = 1
