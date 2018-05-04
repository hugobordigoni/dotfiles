#!/usr/bin/env bash
# Install vim and necessary packages

if [ "$(uname)" == "Darwin" ]; then
	# Even if vim is already installed, you'll need macvim
	brew install macvim --with-override-system-vim --with-python@2
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	# We don't want default apt vim because we need x11 support (in particular for clipboard)
	# Note this work only with local clipboard meaning if you ssh from machine A to machine B
	# Open vim on machine B, then copy in vim will be available in machine B clipboard but not machine A clipboard
	# See https://stackoverflow.com/a/10703012/5228064
	# I did not find any satisfying solution for that for now
	# Get the compile-dependencies of vim
	sudo apt-get build-dep vim
	# Get the source
	git clone https://github.com/vim/vim vim_source
	# Compile it
	cd vim_source
	./configure \
		--enable-perlinterp=dynamic \
		--enable-pythoninterp=dynamic \
		--enable-rubyinterp=dynamic \
		--enable-cscope \
		--enable-gui=auto \
		--enable-gtk2-check \
		--enable-gnome-check \
		--with-features=huge \
		--with-x \
		--with-compiledby=$USER \
		--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu
	make && sudo make install
	cd .. && rm -rf vim_source
fi

# Install vundle and the packages
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.dotfiles/vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'qa!'

# Compile YouCompleteMe
cd $HOME/.dotfiles/vim/bundle/YouCompleteMe
./install.py
