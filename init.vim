set encoding=utf-8
scriptencoding utf-8

" ================
" BASIC VIM CONFIG
" ================

let mapleader = '`'
let timeouttlen = 2000 " extend timout on leader key
set updatetime=100     " number of ms before changes are writted to swp file
set autochdir

" Package manager initialization
runtime bundle/vim-pathogen/autoload/pathogen.vim " so that Pathogen can live in bundle folder
execute pathogen#infect()
filetype plugin indent on

" Reload vim source on save
augroup viminit
  au!
  autocmd bufwritepost *.vim source $MYVIMRC | echom "Reloaded " $MYVIMRC
augroup END

" Tab key behavior
set expandtab 	 " Convert tabs to spaces
set tabstop=2
set shiftwidth=2


" ====================
" UI/APPEARENCE CONFIG
" ====================

" Setup color scheme
" https://github.com/icymind/NeoSolarized
set termguicolors        " truecolor support
colorscheme NeoSolarized " modified Solazized theme for better truecolor support
set background=dark      " use dark version of colorscheme

" Other misc basic vim ui config
set cursorline  " highlight current line
set linebreak   " soft wraps on words not individual chars
set noshowmode  " don't show --INSERT-- etc.

" Airline statusline
" https://github.com/vim-airline/vim-airline
execute 'source' '~/.config/nvim/airline-config.vim'

" GitGutter
" https://github.com/airblade/vim-gitgutter
let g:gitgutter_override_sign_column_highlight = 0     " make sign column look consistent
let g:gitgutter_sign_added = '┃'                       " replace default symbols with something nicer
let g:gitgutter_sign_modified = g:gitgutter_sign_added
let g:gitgutter_sign_removed = g:gitgutter_sign_added

" denite.vim
" Powerful list searcher
" https://github.com/Shougo/denite.nvim
noremap <silent> <leader><space> :Denite source<CR>
noremap <silent> <leader>db  :Denite buffer<CR>
noremap <silent> <leader>dd  :exec 'Denite -input='.&filetype' devdocs'<CR><CR>
noremap <silent> <leader>dc  :Denite command<CR>
noremap <silent> <leader>dh  :Denite help<CR>
noremap <silent> <leader>dff :Denite file<CR>
noremap <silent> <leader>dfr :Denite file/rec<CR>

" devdocs.nvim
" Denite source for devdocs.io
" https://github.com/iamcco/devdocs.nvim
let g:devdocs_config = '~/.config/nvim/devdocs/config.json'

" Tab/pane management configuration to imitate tmux
execute 'source' '~/.config/nvim/tabs-and-panes.vim'


" ==============================
" COMPLETION/LINTING/FIXING ETC.
" ==============================

execute 'source' '~/.config/nvim/completion-linting.vim'


" ===========================
" WRITING AND MARKDOWN CONFIG
" ===========================

" vim-markdown
" Adds a ton of functionality for Markdown
" https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 2
set conceallevel=2

" vim-pencil
" Adds a bunch of really nice features for writing
" https://github.com/reedes/vim-pencil
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
let g:airline_section_x = '%{PencilMode()}'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" tabular
" Helps vim-markdown with table formatting amoung other things
" https://github.com/godlygeek/tabular
"
" Goyo
" Distraction free writing mode for vim
" https://github.com/junegunn/goyo.vim


" ============================
" PROGRAMMING LANGUAGE PLUGINS
" ============================

" vim-javascript
" Syntax highlighting for js
" https://github.com/pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1

" yats.vim
" Syntax highlighting for TypeScript
" https://github.com/herringtondarkholme/yats.vim

" vim-fish
" Syntax highlighting and a bunch of other stuff for Fish
" https://github.com/dag/vim-fish

" haskell-vim
" Syntax highlighting and indentation for Haskell
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
