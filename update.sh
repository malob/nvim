#! /bin/bash
cd ~/.config/nvim
git submodule update --recursive --remote
cd bundle/LanguageClient-neovim
./install.sh
cd ../devdocs.nvim
npm install
cd ../..
nvr -s -c UpdateRemotePlugins -c DevdocsUpdate -c Helptags
