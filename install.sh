#!/bin/bash -e

sudo apt install -y \
	clang \
	cmake \
	curl \
	g++\
	gcc \
	git \
	libclang-dev \
	llvm-dev \
	neovim \
	python3 \
	python3-pip \
	python3-venv \
	rapidjson-dev \
	ripgrep \
	tmux \
	zsh

echo "----- Installing rustup and cargo"

if [ -x "$(command -v cargo)" ]; then
	echo "----- Cargo and rustup are already install"
else
	curl https://sh.rustup.rs -sSf | sh
	source $HOME/.cargo/env
fi;

echo "----- Installing Oh my zsh"

if [ -d "$HOME/.oh-my-zsh" ]; then
	echo "----- Oh My Zsh already install"
else
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	echo "----- Install zsh syntax plugin"

	if [ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
		echo "----- zsh syntax plugin is already install"
	else
		git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	fi;

	echo "----- Install zsh theme"

	if [ -d "$HOME/.oh-my-zsh/themes/palenight.zsh-theme" ]; then
		echo "----- zsh theme is already install"
	else
		wget -O $HOME/.oh-my-zsh/themes/palenight.zsh-theme \
			https://raw.githubusercontent.com/jenssegers/palenight.zsh-theme/master/palenight.zsh-theme
	fi;
fi;


echo "----- Install Vim-plug"

if [ -f "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
	echo "----- Vim plug already install"
else
	sh -c "$(curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)"
fi;

echo "----- Install Packer"


if [ -f "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
	echo "----- Packer is already install"
else
	git clone --depth 1 https://github.com/wbthomason/packer.nvim \
		$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
fi;

echo "----- Install Nvm"

if [ -x "$(command -v nvm)" ]; then
	echo "----- Nvm already install"
else
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh)"
	source ~/.nvm/nvm.sh
fi;

echo "----- Install latest npm and node"

nvm install --latest-npm

echo "----- Install latest npm packages"

npm install -g prettier

echo "----- Install Tmux plugin manager"

if [ -d "$HOME/.tmux/plugins/tpm" ]; then
	echo "----- Tmux plugin manger already install"
else
	git clone https://github.com/tmux-plugins/tpm \
		$HOME/.tmux/plugins/tpm
fi;

echo "----- Copy dotfiles to $HOME"

cp -r ./.config ./.bashrc ./.zshrc $HOME
