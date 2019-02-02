" ==========
" ALE CONFIG
" ==========
scriptencoding utf-8

" Restrict linters for some file types
let g:ale_linters = {
  \ 'haskell': [],
  \ 'javascript': []
\ }

" Fixers
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
