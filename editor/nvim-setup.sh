#!/bin/bash

#install nvim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

#for ack
sudo apt-get install ripgrep

#for coc
curl -sL install-node.vercel.app/lts | bash
npm install neovim yarn

cp -r ./nvim ~/.config/


