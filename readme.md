**Warning: Readme is super out of date**

This is a repo of my [NeoVim](https://neovim.io) config files.

# Plugins
Plugins are managed using [Pathogen](https://github.com/tpope/vim-pathogen).

## Included plugins
* General
  * [NeoSolarized](https://github.com/icymind/NeoSolarized): A fixed solarized colorscheme for better truecolor support
  * [tabular](https://github.com/godlygeek/tabular): For text filtering and alignment
  * [vim-airline](https://github.com/vim-airline/vim-airline): Statusline
  * [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes): Themes for vim-airline
  * [vim-fugitive](https://github.com/tpope/vim-fugitive): Git wapper
  * [vim-gitgutter](https://github.com/airblade/vim-gitgutter): Shows diff in signcolumn and stages/undoes hunks
  * [vim-surround](https://github.com/tpope/vim-surround): To easily delete, change and add surrounding pairs
* Coding
  * [ale](https://github.com/w0rp/ale): Asynchronous lint engine
  * [deoplete.nvim](https://github.com/Shougo/deoplete.nvim): Asynchronous completion framework
  * [LanguageClient-neovim](https://github.com/autozimu/LanguageClient-neovim) Language Server Protocol (LSP) support for vim and neovim
  * [supertab](https://github.com/ervandew/supertab): For tabing through completions
  * [utilsnips](https://github.com/sirver/UltiSnips): Snippets utility that integrates with Deoplete
  * [vim-puppet](https://github.com/rodjek/vim-puppet): Niceties for working with Puppet files
  * [vim-snippets](https://github.com/honza/vim-snippets): Large collection of snippets for use with UtilSnips
  * Haskell specific
    * [haskell-vim](https://github.com/neovimhaskell/haskell-vim): Syntax highlighting and indentation for Haskell and Cabal
    * [intero-neovim](https://github.com/parsonsmatt/intero-neovim): A neovim plugin for [Intero](https://commercialhaskell.github.io/intero/), forked from ghcmod-vim.
    * [neco-ghc](https://github.com/eagletmt/neco-ghc): A completion plugin for Haskell, using ghc-mod
    * [vim-hintent](https://github.com/alx741/vim-hindent): Integrates with [hindent](https://github.com/chrisdone/hindent) so every time you save a Haskell source file it gets automatically prettified
    * [vim-stylishask](https://github.com/alx741/vim-stylishask): Integrates with [stylish-haskell](https://github.com/jaspervdj/stylish-haskell) so every time you save a Haskell source file it gets automatically prettified
* Writing/Markdown
  * [goyo.vim](https://github.com/junegunn/goyo.vim): Distraction-free writing mode for Vim
  * [vim-markdown](https://github.com/gabrielelana/vim-markdown): Markdown vim mode
  * [vim-pencil](https://github.com/reedes/vim-pencil): For better navigation with soft linebreaks, and other nice things for writing.

# Installation instructions

## Requirements
In order for the Haskell plugins to work correctly [stack](https://docs.haskellstack.org/en/stable/README/) must be installed. (We're using `--resolver lts-9.21` since one of the packages we need to install isn't on the current lts.)
```bash
curl -sSL https://get.haskellstack.org/ | sh
stack setup --resolver lts-9.21
```

Additionlly, the following packages must be installed using `stack`:
```bash
stack install ghc-mod hlint hindent stylish-haskell
```

On Ubuntu 16.04 the intero-neovim also requires an additional dependency:
```bash
sudo apt install libtinfo-dev
```

Finally the deoplete.nvim plugin requires the `neovim` Python 3 package.
```bash
pip3 install neovim
```

## Installation
Clone this repo to the correct location:
```bash
rm -r ~/.config/nvim
cd ~/.config
git clone --recursive https://github.com/malob/nvim.git
```

Then open `nvim` and run the `:Helptags` command.

# Installing and updating plugins
Plugins are located in the `bundle` folder and are added as `git` submodules. To update all plugins run the following commands:
```bash
cd ~/.config/nvim
git submodule update --remote
```

To install a new plugin:
```bash
cd ~/.config/nvim/bundle
git submodule add [repo url]
```
