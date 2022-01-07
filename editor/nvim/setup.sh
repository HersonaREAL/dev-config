#!/bin/bash

#install nvim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

# plug manager
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#for ack
sudo apt-get install ripgrep

#for coc
curl -sL install-node.vercel.app/lts | bash
npm install neovim yarn




