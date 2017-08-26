#!/usr/bin/env bash
# Install tmux >= 2.4 on OSX or Linux
if [ "$(uname)" == "Darwin" ]; then
	brew install tmux
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	sudo apt-get install libevent-dev ncurses-dev
	if [[ `tmux -V` == *master ]]; then
		git clone https://github.com/tmux/tmux $HOME/.dotfiles/tmux/src/
		cd $HOME/.dotfiles/tmux/src
		# Install version 2.4 using git tag. (For tmuxinator compatibility)
		git checkout tags/2.4 -b 2.4
		sh autogen.sh
		./configure && make
		cp tmux /bin
	fi
	cd $HOME
fi

# Download tmuxinator
sudo gem install tmuxinator
