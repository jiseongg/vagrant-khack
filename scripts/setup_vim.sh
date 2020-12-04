#!/usr/bin/env sh

HOME="/home/vagrant"
SHARE="/vagrant"

if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
	git clone \
		https://github.com/VundleVim/Vundle.vim.git \
		$HOME/.vim/bundle/Vundle.vim 
fi

cat $SHARE/configs/vimrc > $HOME/.vimrc
