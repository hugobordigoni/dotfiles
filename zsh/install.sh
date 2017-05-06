#!/usr/bin/env bash
# Install zsh on OSX or Linux
if [ "$(uname)" == "Darwin" ]; then
	brew install zsh
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	sudo apt-get install zsh
fi
