" ==============
" AIRLINE CONFIG
" ==============
scriptencoding utf-8

" General configuration
let g:airline_theme = 'solarized'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]' " don't show file encoding unless it's something unexpected
let g:airline#extensions#hunks#non_zero_only = 1             " don't show git change stats unless there are some
let g:airline_skip_empty_sections = 1                        " don't show sections if they're empty

" Tabline configuration
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#tab_nr_type = 2        " tabs show [number of tab].[number of splits]
let g:airline#extensions#tabline#show_tab_type = 0      " don't show tab or buffer labels in bar
let g:airline#extensions#tabline#show_close_button = 0  " don't display close button in top right

" Extensions
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" Cutomtomize symbols
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.notexists = ' '
let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : '',
  \ 'R'  : 'R',
  \ 'c'  : '',
  \ 'v'  : '',
  \ 'V'  : '',
  \ '' : '',
  \ 's'  : 'S',
  \ 'S'  : 'S',
  \ '' : 'S',
  \ 't'  : '',
\ }
