scriptencoding utf-8

" ======================
" LANGUAGE SERVER CONFIG
" ======================
" LanguageClient-neovim
" Provides completions, linting, fixers, etc.
" https://github.com/autozimu/LanguageClient-neovim

" Language server install commands
" sh: npm i -g bash-language-server
" haskell: see https://github.com/haskell/haskell-ide-engine
" java/typescript: npm i -g typescript-language-server
" lua: luarocks install --server=http://luarocks.org/dev lua-lsp && luarocks install luacheck lcf
let g:LanguageClient_serverCommands = {
  \ 'sh': ['/usr/local/bin/bash-language-server', 'start'],
  \ 'haskell': ['~/.local/bin/hie-wrapper'],
  \ 'javascript': ['/usr/local/bin/typescript-language-server', '--stdio'],
  \ 'lua': ['/usr/local/bin/lua-lsp'],
  \ 'typescript': ['/usr/local/bin/typescript-language-server', '--stdio'],
\ }

" Customize symbols
let g:LanguageClient_diagnosticsDisplay = {
  \ 1: {
  \     'name': 'Error',
  \     'texthl': 'ALEError',
  \     'signText': '',
  \     'signTexthl': 'ALEErrorSign',
  \ },
  \ 2:  {
  \     'name': 'Warning',
  \     'texthl': 'ALEWarning',
  \     'signText': '',
  \     'signTexthl': 'ALEWarningSign',
  \ },
  \ 3:  {
  \     'name': 'Information',
  \     'texthl': 'ALEInfo',
  \     'signText': '\uF05A',
  \     'signTexthl': 'ALEInfoSign',
  \ },
  \ 4:  {
  \     'name': 'Hint',
  \     'texthl': 'ALEInfo',
  \     'signText': '➤',
  \     'signTexthl': 'ALEInfoSign',
  \ },
\ }


"===========
" ALE CONFIG
"===========
" Asyncronous Linting Engine
" Used for linting when no good language server is available
" https://github.com/w0rp/ale

" Commands to install bins required for linters/fixes
" javascript/json: npm i -g prettier prettier-eslint
" puppet: gem install puppet-lint
" vim: pip install vim-vint

" Disable linters for filetypes with language servers
let g:ale_linters = {
  \ 'sh': [],
  \ 'haskell': [],
  \ 'javascript': [],
  \ 'lua': [],
  \ 'typescript': []
\ }

" Enable some fixers
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'javascript': ['prettier-eslint'],
  \ 'json': ['prettier'],
  \ 'puppet': ['puppetlint']
\ }
let g:ale_fix_on_save = 1

" Customize symbols
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_sign_info = "\uF05A"
let g:ale_sign_style_error = "\uF8EA"
let g:ale_sign_style_warning = g:ale_sign_style_error

" =================
" COMPLETION CONFIG
" =================

" Deoplete autocompletion engine
" Used to display/manage all completions
" https://github.com/Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1
call deoplete#custom#var('around', {
\ 'mark_above': '[↑]',
\ 'mark_below': '[↓]',
\ 'mark_changes': '[*]',
\})

" Echodoc
" Shows function signatures in command area
" https://github.com/Shougo/echodoc.vim
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'

" neco-vim
" Deoplete completion source for vim files
" https://github.com/Shougo/neco-vim

" deoplete-fish
" Deoplete completion source for fish files
" https://github.com/ponko2/deoplete-fish

" ==================
" KEYBOARD SHORTCUTS
" ==================

nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
nnoremap <leader>ld :call LanguageClient#textDocument_definition({'gotoCmd': 'split'})<CR>
nnoremap <leader>li :call LanguageClient#textDocument_implementation()<CR>
nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
nnoremap <leader>la :call LanguageClient#workspace_applyEdit()<CR>
nnoremap <leader>ll :call LanguageClient#textDocument_documentHighlight()<CR>
nnoremap <leader>lc :Denite codeAction<CR>
nnoremap <leader>lm :Denite contextMenu<CR>
nnoremap <leader>ls :Denite documentSymbol<CR>
nnoremap <leader>lw :Denite workspaceSymbol<CR>
nnoremap <leader>lx :Denite references<CR>

nnoremap <leader>en :cnext<CR>
nnoremap <leader>ep :cprev<CR>
