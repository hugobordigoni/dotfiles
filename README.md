## Purpose
My environment. This is a first version. For cleaner stuffs, you can see [Holman dotfiles](https://github.com/holman/dotfiles).

Mine includes settings for `vim`, `tmux`, `zsh`, `iterm2`. It's mostly designed for python programming.

For vim, it's highly inspired by [Real Python Tutorial](https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/)

## Prerequisites
You need `python`, `rubygem`, `git`, `automake`, `cmake`, `pkg-config` installed
On OSX, you'll also need to install `brew` and `iterm2`

## Install
* Run `git clone https://github.com/hugobordigoni/dotfiles.git ~/.dotfiles`
* Run `cd ~/.dotfiles`, then `script/bootstrap` to create all the symlinks then `script/install` to install all the packages

## Cheatsheet
### tmux
* Can copy using vim-mode. Enter copy-mode by scrolling or using `<leader>[`
* Can copy using mouse using `option` key
* `<leader>%` to split panes vertically, `<leader>"`to split panes horizontally
* `<c-h>`, `<c-j>`, `<c-k>`, `<c-l>`to navigate through panes
* `<leader>q` to visualize pane number and enter number to go to this pane
* `<leader>z` to zoom on current pane

### vim
* `:sp` to split horizontally, `:vs` to split vertically
* Navigation through panes can be done using tmux key
* Autocomplete is done using `YouCompleteMe`
* `<c-y>` can be use to accept completion
* We use `jedi-vim` for `GoToDefinition`, `GetDoc` and `FunctionSignature`
* `<leader>g` to `GoToDefinition`
* `<leader>d` to `GetDoc`
* I choose to map `<leader>` to `,`
* `NERDTree` opens when vim is opened on a directory, not on a file
* Toggle `NERDTree` on and off with `<c-n>`
* `<c-o>` to jump to last location
* `:set syntax=<wanted_syntax>` to set the syntax in a file with odd extensions
