#!/bin/bash

dir=~/.files
files=".zshrc .vimrc .i3/config .Xresources .ssh/config
.tmux.conf .config/nvim/init.vim .gitconfig .config/Code/User/settings.json
.config/kitty/kitty.conf .config/ghostty/config .config/starship.toml"


cd $dir

for file in $files; do
	mkdir -p ~/"$(dirname "$file")"
	ln -sfn $dir/$file ~/$file
done
