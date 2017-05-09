#!/usr/bin/env bash
# Install tmux >= 2.4 on OSX or Linux
if [ "$(uname)" == "Darwin" ]; then
	brew install tmux
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	sudo apt-get install libevent-dev ncurses-dev
	if [[ `tmux -V` == *2.4 ]] then
		git clone https://github.com/tmux/tmux $HOME/.dotfiles/tmux/src/
		cd $HOME/.dotfiles/tmux/src
		sh autogent.sh
		./configure && make
		cp tmux /bin
	fi
	cd $HOME
fi
