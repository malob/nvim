This is a repo of my [NeoVim](https://neovim.io) config files.

Notable features include:
* Configuration to let you basically replace `tmux` with `nvim`.
* A pretty great setup for coding TypeScript and plain old JS.
* A bunch of nice tools to make writing really nice.
* A bunch of nice aesthetic touches.

Below I've included a bit of documentation and some setup instructions, but the actual `*.vim` files also contain a lot of documentation.

# Plugins
Plugins are managed using [Pathogen](https://github.com/tpope/vim-pathogen).

## Included plugins
* General
  * [denite.nvim](https://github.com/Shougo/denite.nvim): Very powerful search/action tool for all kinds of sources
  * [devdocs.nvim](https://github.com/iamcco/devdocs.nvim): denite source for devdocs.io
  * [NeoSolarized](https://github.com/icymind/NeoSolarized): A fixed solarized colorscheme for better truecolor support
  * [vim-airline](https://github.com/vim-airline/vim-airline): Statusline
  * [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes): Themes for vim-airline
  * [vim-startify](https://github.com/mhinz/vim-startify): The fancy start screen for Vim
  * [vim-choosewin](https://github.com/t9md/vim-choosewin): Mimic tmux's display-pane feature
* Coding tools
  * [ale](https://github.com/w0rp/ale): Asynchronous lint engine
    * If I can't find a good language server, I use ALE for linting/fixing.
  * [deoplete.nvim](https://github.com/Shougo/deoplete.nvim): Asynchronous completion framework
    * Handles all my autocompletion, integrates with LanguageClient-neovim.
  * [echodoc.vim](https://github.com/Shougo/echodoc.vim): Displays function signatures from completions in the command line (sometimes)
  * [LanguageClient-neovim](https://github.com/autozimu/LanguageClient-neovim) Language Server Protocol (LSP) support
    * If there is a good language server available, then this package will handle all of the things (except syntax highlighting).
  * [vim-gitgutter](https://github.com/airblade/vim-gitgutter): Shows diff in signcolumn and stages/undoes hunks
  * [vim-surround](https://github.com/tpope/vim-surround): To easily delete, change and add surrounding pairs
* Language support
  * [deoplete-fish](https://github.com/ponko2/deoplete-fish): Deoplete source for Fish scripts
  * [haskell-vim](https://github.com/neovimhaskell/haskell-vim): Syntax highlighting and indentation for Haskell and Cabal
  * [neco-vim](https://github.com/Shougo/neco-vim): Deoplete source for Vim scripts
  * [vim-fish](https://github.com/dag/vim-fish): Syntax highlighting etc. for Fish scripts
  * [vim-javascript](https://github.com/pangloss/vim-javascript): Syntax highlighting and improved indentation for JS
  * [vim-puppet](https://github.com/rodjek/vim-puppet): Niceties for working with Puppet files
  * [yats.vim](https://github.com/HerringtonDarkholme/yats.vim): Syntax highlighting for TypeScript
* Writing/Markdown
  * [goyo.vim](https://github.com/junegunn/goyo.vim): Distraction-free writing mode for Vim
  * [vim-markdown](https://github.com/gabrielelana/vim-markdown): Markdown vim mode
  * [tabular](https://github.com/godlygeek/tabular): For text filtering and alignment
  * [vim-pencil](https://github.com/reedes/vim-pencil): For better navigation with soft linebreaks, and other nice things for writing

# Setup instructions

## Dependencies
* The config expects a terminal emulator with truecolor support. I use [`kitty`](https://sw.kovidgoyal.net/kitty/).
* Some of the aesthetic touches make use of [NerdFont](https://nerdfonts.com) icons. My preferred font is [FiraCode](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode).
* Both the denite.nvim and deoplete.nvim plugin requires the `neovim` Python 3 package.
```bash
pip3 install neovim
```
* Finally many of the language servers, as well as devdocs.vim require that `npm` is installed. (`brew install node` in macOS or `apt install nodejs` in Ubuntu.)

## Installation
Clone this repo to the correct location:
```bash
rm -rf ~/.config/nvim
git clone --recursive https://github.com/malob/nvim.git ~/.config/nvim
~/.config/nvim/update.sh
```

## Installing, updating, and removing plugins
Plugins are located in the `bundle` folder and are added as `git` submodules. To update all plugins run `update.sh`, or simply press `u` on the neovim start screen.

To install a new plugin:
```bash
cd ~/.config/nvim/bundle
git submodule add [repo url]
```
To remove a plugin:
  * delete the relevent lines from `.gitmodules` and `.git/config`,
  * run `git rm --cached [plugin_folder]` and `rm -rf [plugin_folder]`,
  * then commit your changes.

## Tmux replacement setup
Have a look at the [tabs-and-panes.vim](tabs-and-panes.vim) file to understand the basics of the setup. To really get the most out of it I suggest getting the following tools:
* [neovim-remote](https://github.com/mhinz/neovim-remote)
  * This will allow you to open files in `nvim` from the neovim terminal without creating a nested neovim session.
  * Install it via `pip`: `pip3 install neovim-remote`.
  * Use `nvr [file]` to open a file from inside the neovim terminal.
  * It's a pretty powerful tool, so I recommend having a look at `nvr --help` to see what you can do with it.
* [abduco](https://github.com/martanne/abduco)
  * This will give you the ability to manage sessions that persist between shell sessions.

## Language Server and Linting Dependencies
Have a look in [completion-linting.vim](completion-linting.vim) for information on dependencies for various language servers and linters/fixers.
