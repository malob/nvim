" Package manager initialization
execute pathogen#infect()
filetype plugin indent on


" ==============================
" GENERAL UI AND BEHAVIOR CONFIG
" ==============================

" Setup color scheme
colorscheme solarized
set background=dark

" UI settings
set number		" show line numbers
set cursorline		" highlight current line

" Tab behavior
set expandtab 		" Convert tabs to spaces
set tabstop=2
set shiftwidth=2

" Ctr-{hjkl} for navigating panes
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Airline config
" https://github.com/vim-airline/vim-airline
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

" Deoplete autocompletion engine config
" https://github.com/Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1

" Supertap config
" https://github.com/ervandew/supertab
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'


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

" Ale linter config
" https://github.com/w0rp/ale
let g:ale_linters = {
\   'haskell': ['stack-ghc-mod', 'hlint'],
\}
let g:ale_change_sign_column_color = 1

" Intero config
" https://github.com/parsonsmatt/intero-neovim
let g:intero_use_neomake = 0
augroup interoMaps
  au!
  " Maps for intero. Restrict to Haskell buffers so the bindings don't collide.

  " Background process and window management
  au FileType haskell nnoremap <silent> <leader>is :InteroStart<CR>
  au FileType haskell nnoremap <silent> <leader>ik :InteroKill<CR>

  " Open intero/GHCi split horizontally
  au FileType haskell nnoremap <silent> <leader>io :InteroOpen<CR>
  " Open intero/GHCi split vertically
  au FileType haskell nnoremap <silent> <leader>iov :InteroOpen<CR><C-W>H
  au FileType haskell nnoremap <silent> <leader>ih :InteroHide<CR>

  " Reloading (pick one)
  " Automatically reload on save
  au BufWritePost *.hs InteroReload
  " Manually save and reload
  au FileType haskell nnoremap <silent> <leader>wr :w \| :InteroReload<CR>

  " Load individual modules
  au FileType haskell nnoremap <silent> <leader>il :InteroLoadCurrentModule<CR>
  au FileType haskell nnoremap <silent> <leader>if :InteroLoadCurrentFile<CR>

  " Type-related information
  " Heads up! These next two differ from the rest.
  au FileType haskell map <silent> <leader>t <Plug>InteroGenericType
  au FileType haskell map <silent> <leader>T <Plug>InteroType
  au FileType haskell nnoremap <silent> <leader>it :InteroTypeInsert<CR>

  " Navigation
  au FileType haskell nnoremap <silent> <leader>jd :InteroGoToDef<CR>

  " Managing targets
  " Prompts you to enter targets (no silent):
  au FileType haskell nnoremap <leader>ist :InteroSetTargets<SPACE>
augroup END

" Haskell competions using neco-ghc config
" https://github.com/eagletmt/neco-ghc
let g:haskellmode_completion_ghc = 0	" Disable haskell-vim omnifunc
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc 
let g:necoghc_enable_detailed_browse = 1


" ===========================
" WRITING AND MARKDOWN CONFIG
" ===========================

" vim-markdown config
" https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1
set conceallevel=2
