#!/usr/bin/env bash
# Install vim and necessary packages

if [ "$(uname)" == "Darwin" ]; then
	# Even if vim is already installed, you'll need macvim
	brew install macvim --with-override-system-vim
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	sudo apt-get install vim
fi

# Install vundle and the packages
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.dotfiles/vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'qa!'

# Compile YouCompleteMe
cd $HOME/.dotfiles/vim/bundle/YouCompleteMe
./install.py
