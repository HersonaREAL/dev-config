mkdir -p ~/.vim/pack/plugins/start
git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/plugins/start/ctrlp
git clone --depth=1 https://github.com/mileszs/ack.vim.git ~/.vim/pack/plugins/start/ack
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

git clone https://github.com/easymotion/vim-easymotion ~/.vim/pack/vendor/start/vim-easymotion