" Package manager initialization
execute pathogen#infect()

" Setup color scheme
colorscheme solarized
set background=dark
set termguicolors

" UI settings
set number		" show line numbers
set cursorline		" highlight current line


" File type specific settings
autocmd FileType markdown setlocal spell spelllang=en_us
