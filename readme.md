This is a repo of my [NeoVim](https://neovim.io) config files.

# Plugins
Plugins are managed using [Pathogen](https://github.com/tpope/vim-pathogen).

## Included plugins
* General
  * [vim-colors-solazired](https://github.com/altercation/vim-colors-solarized): Solarized color scheme
  * [vim-airline](https://github.com/vim-airline/vim-airline): Status bar
  * [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes): Themes for vim-airline
  * [vim-surround](https://github.com/tpope/vim-surround): Easily delete, change and add surrounding pairs
* Coding
  * [ale](https://github.com/w0rp/ale): Asynchronous lint engine
  * [deoplete.nvim](https://github.com/Shougo/deoplete.nvim): Asynchronous completion framework
  * [supertab](https://github.com/ervandew/supertab): Perform all your vim insert mode completions with Tab
  * Haskell specific
    * [haskell-vim](https://github.com/neovimhaskell/haskell-vim): Syntax highlighting and indentation for Haskell and Cabal
    * [intero-neovim](https://github.com/parsonsmatt/intero-neovim): A neovim plugin for [Intero](https://commercialhaskell.github.io/intero/), forked from ghcmod-vim.
    * [neco-ghc](https://github.com/eagletmt/neco-ghc): A completion plugin for Haskell, using ghc-mod
    * [vim-hintent](https://github.com/alx741/vim-hindent): Integrates with [hindent](https://github.com/chrisdone/hindent) so every time you save a Haskell source file it gets automatically prettified
    * [vim-stylishask](https://github.com/alx741/vim-stylishask): Integrates with [stylish-haskell](https://github.com/jaspervdj/stylish-haskell) so every time you save a Haskell source file it gets automatically prettified
* Writing/Markdown
	* [goyo.vim](https://github.com/junegunn/goyo.vim): Distraction-free writing in Vim
	* [vim-markdown](https://github.com/gabrielelana/vim-markdown): Markdown vim mode

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
mkdir ~/.config/nvim
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
