" ====================
" TAB AND PANES CONFIG
" ====================

" Tab creation/destruction
" new tab w/ terminal
noremap  <silent> <leader>t <ESC>:tabnew +term<CR>i
noremap! <silent> <leader>t <ESC>:tabnew +term<CR>i
tnoremap <silent> <leader>t <C-\><C-n>:tabnew +term<CR>i
" close tab
noremap  <silent> <leader>q <ESC>:tabclose<CR>
noremap! <silent> <leader>q <ESC>:tabclose<CR>
tnoremap <silent> <leader>q <C-\><C-n>:tabclose<CR>

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
noremap  <silent> <leader>\ <ESC>:vs +term<CR>i
noremap! <silent> <leader>\ <ESC>:vs +term<CR>i
tnoremap <silent> <leader>\ <C-\><C-n>:vs +term<CR>i
" new horizontal split w/ terminal
noremap  <silent> <leader>" <ESC>:split +term<CR>i
noremap! <silent> <leader>" <ESC>:split +term<CR>i
tnoremap <silent> <leader>" <C-\><C-n>:split +term<CR>i
" close pane
noremap  <silent> <leader>x <ESC>:q<CR>
noremap! <silent> <leader>x <ESC>:q<CR>
tnoremap <silent> <leader>x <C-\><C-n>:q<CR>

" Pane navigation
" move left
noremap  <silent> <leader>h <ESC>:wincmd h<CR>
noremap! <silent> <leader>h <ESC>:wincmd h<CR>
tnoremap <silent> <leader>h <C-r><C-n><C-w>h
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
