scriptencoding utf-8

" ======================
" LANGUAGE SERVER CONFIG
" ======================
"
if has('linux')
  let g:LanguageClient_serverCommands = {
    \ 'haskell': ['/home/malo/.local/bin/hie-wrapper'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'lua': ['/usr/local/bin/lua-lsp']
  \ }
else
  let g:LanguageClient_serverCommands = {
    \ 'haskell': ['/Users/malo/.local/bin/hie-wrapper'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'lua': ['/usr/local/bin/lua-lsp'],
  \ }
endif


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

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
map <Leader>lk :call LanguageClient#textDocument_hover()<CR>
map <Leader>lg :call LanguageClient#textDocument_definition()<CR>
map <Leader>lr :call LanguageClient#textDocument_rename()<CR>
map <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
map <Leader>lb :call LanguageClient#textDocument_references()<CR>
map <Leader>la :call LanguageClient#textDocument_codeAction()<CR>
map <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>
