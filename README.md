## Purpose
My environment. This is a first version. For cleaner stuff, you can see [Holman dotfiles](https://github.com/holman/dotfiles).

Mine includes settings for vim, tmux, zsh, oh-my-zsh, iterm2. It's designed for python programming.

For vim, it's highly inspired by [Real Python Tutorial](https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/)

## Install
* Run `git clone https://github.com/hugobordigoni/dotfiles.git ~/.dotfiles`
* Install zsh `brew install zsh` on OSX, `sudo apt-get install zsh` on Ubuntu
* If on OSX, you'll need iTerm2
* Run `script/install` to install oh-my-zsh and `script/bootstrap` to create all the symlinks
* Clone Vundle : `git clone https://github.com/gmarik/Vundle.vim.git $HOME/.dotfiles/vim/bundle/Vundle.vim`
* Source vimrc and install packages:
```bash
vim $HOME/.vimrc
:source %|PluginInstall`
```
* Compile YouCompleteMe: depends on the os so follow [YouCompleteMe](https://github.com/Valloric/YouCompleteMe#installation)
