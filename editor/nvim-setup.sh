#!/bin/bash

# copy config
rm -rf ~/.config/nvim
cp -r nvim ~/.config/

#install nvim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

#for ack
sudo apt-get install ripgrep
sudo apt-get install ack-grep

#for coc
curl -sL install-node.vercel.app/lts | sudo bash
npm install neovim yarn

