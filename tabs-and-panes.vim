" ====================
" TAB AND PANES CONFIG
" ====================

" Make using terminal less crazy making
set autochdir             " automatically change working directory for each buffer
tnoremap <ESC> <C-\><C-n> " use ESC to enter normal mode in terminal
augroup neovimTerm " enable signcolumn and line numbers in all buffers except terminal
  au TermOpen * if &buftype == 'terminal' | :set nonumber | :set signcolumn=no | :startinsert | endif
  au BufEnter * if &buftype != 'terminal' | :set number | :set signcolumn=yes | else | :startinsert | endif
augroup END

" Tab creation/destruction
" new tab w/ terminal
noremap  <silent> <leader>t <ESC>:tabnew +term<CR>
noremap! <silent> <leader>t <ESC>:tabnew +term<CR>
tnoremap <silent> <leader>t <C-\><C-n>:tabnew +term<CR>
" close tab
noremap  <silent> <leader>x <ESC>:tabclose<CR>
noremap! <silent> <leader>x <ESC>:tabclose<CR>
tnoremap <silent> <leader>x <C-\><C-n>:tabclose<CR>

" Tab navigation
" next tab
noremap  <silent> <leader>n <ESC>:tabnext<CR>
noremap! <silent> <leader>n <ESC>:tabnext<CR>
tnoremap <silent> <leader>n <C-\><C-n>:tabnext<CR>
" previous tab
noremap  <silent> <leader>p <ESC>:tabprevious<CR>
noremap! <silent> <leader>p <ESC>:tabprevious<CR>
tnoremap <silent> <leader>p <C-\><C-n>:tabprevious<CR>

" Pane creation/destruction
" new verticle split w/ terminal
noremap  <silent> <leader>\| <ESC>:vs +term<CR>
noremap! <silent> <leader>\| <ESC>:vs +term<CR>
tnoremap <silent> <leader>\| <C-\><C-n>:vs +term<CR>
" new horizontal split w/ terminal
noremap  <silent> <leader>_ <ESC>:split +term<CR>
noremap! <silent> <leader>_ <ESC>:split +term<CR>
tnoremap <silent> <leader>_ <C-\><C-n>:split +term<CR>
" close pane
noremap  <silent> <leader>q <ESC>:q<CR>
noremap! <silent> <leader>q <ESC>:q<CR>
tnoremap <silent> <leader>q <C-\><C-n>:q<CR>

" Pane navigation
" move left
noremap  <silent> <leader>h <ESC>:wincmd h<CR>
noremap! <silent> <leader>h <ESC>:wincmd h<CR>
tnoremap <silent> <leader>h <C-\><C-n><C-w>h
" move right
noremap  <silent> <leader>l <ESC>:wincmd l<CR>
noremap! <silent> <leader>l <ESC>:wincmd l<CR>
tnoremap <silent> <leader>l <C-\><C-n><C-w>l
" move up
noremap  <silent> <leader>k <ESC>:wincmd k<CR>
noremap! <silent> <leader>k <ESC>:wincmd k<CR>
tnoremap <silent> <leader>k <C-\><C-n><C-w>k
" move down
noremap  <silent> <leader>j <ESC>:wincmd j<CR>
noremap! <silent> <leader>j <ESC>:wincmd j<CR>
tnoremap <silent> <leader>j <C-\><C-n><C-w>j

" Close various special panes
" help
noremap <silent> <leader>ch :helpclose<CR>
" preview
noremap <silent> <leader>cp :pclose<CR>
