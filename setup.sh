#!/usr/bin/env zsh

DOT_FILES=$HOME/.dotfiles

mkdir ~/.config/zsh

# dotfiles linking
ln -s $DOT_FILES/zsh/.zshrc ~/.zshrc
ln -s $DOT_FILES/zsh/aliases.zsh ~/.config/zsh/aliases.zsh
ln -s $DOT_FILES/git ~/.config/git
ln -s $DOT_FILES/alacritty ~/.config/alacritty
ln -s $DOT_FILES/ghostty ~/.config/ghostty
ln -s $DOT_FILES/tmux ~/.config/tmux
ln -s $DOT_FILES/nvim ~/.config/nvim
ln -s $DOT_FILES/starship/starship.toml ~/.config/starship.toml

# setup alacritty theme
if [ ! -d ~/.config/alacritty/themes ]; then
  mkdir -p ~/.config/alacritty/themes
  git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
fi

# setup tmxu package manager
if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
