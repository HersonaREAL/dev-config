#!/bin/bash

# copy config
rm -rf ~/.config/nvim
cp -r nvim ~/.config/

if [ -x "$(command -v pacman)" ]; then
    echo 'This is an arch linux!'
    #install nvim
    sudo pacman -Sy neovim ripgrep ack python-pip
    pip3 install neovim

    #for coc
    curl -sL install-node.vercel.app/lts | sudo bash
    npm install neovim yarn
    exit 0;
fi

if [ -x "$(command -v apt)" ]; then
    echo 'This is an debian linux!'
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
fi
