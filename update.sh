#! /bin/bash
cd ~/.config/nvim
git submodule update --recursive --remote
bundle/LanguageClient-neovim/install.sh
cd bundle/devdocs.nvim
npm install
cd ../..
