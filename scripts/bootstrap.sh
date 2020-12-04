#!/usr/bin/env sh
apt-get update

DEBIAN_FRONTEND=noninteractive apt-get install -y \
	git flex bison bc ncurses-dev libssl-dev \
	vim ctags cscope tmux

