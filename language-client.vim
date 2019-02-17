scriptencoding utf-8

" ======================
" LANGUAGE SERVER CONFIG
" ======================
"
let g:LanguageClient_serverCommands = {
  \ 'haskell': ['~/.local/bin/hie-wrapper'],
  \ 'javascript': ['/usr/local/bin/typescript-language-server', '--stdio'],
  \ 'lua': ['/usr/local/bin/lua-lsp'],
  \ 'typescript': ['/usr/local/bin/typescript-language-server', '--stdio'],
\ }


" ===============
" DISPLAY OPTIONS
" ===============

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

" =================
" KEYBOARD SHORTCUTS
" =================

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
