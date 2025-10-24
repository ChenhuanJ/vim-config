#!/usr/bin/env bash
set -e

# Clone the repo if it doesn't exist
if [ ! -d "$HOME/vim-config" ]; then
  git clone https://github.com/ChenhuanJ/vim-config.git "$HOME/vim-config"
elif [ -d "$HOME/vim-config/.git" ]; then
  echo "vim-config is a git repo, pulling latest changes..."
  cd "$HOME/vim-config"
  git pull
else
  echo "WARNING: ~/vim-config exists but is not a git repo."
  echo "Please remove or rename it before running this script."
  exit 1
fi

# Symlink .vimrc
ln -sf "$HOME/vim-config/.vimrc" "$HOME/.vimrc"

# Ensure ~/.vim exists
mkdir -p "$HOME/.vim"

# Symlink other config files into ~/.vim
ln -sf "$HOME/vim-config/plugins.vim" "$HOME/.vim/plugins.vim"
ln -sf "$HOME/vim-config/plugin-config.vim" "$HOME/.vim/plugin-config.vim"
ln -sf "$HOME/vim-config/autoclose.vim" "$HOME/.vim/autoclose.vim"

# Install Vim-Plug if not already installed
if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
  echo "Installing Vim-Plug..."
  curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Install plugins automatically
vim +PlugInstall +qall

echo "Vim configuration installed successfully!"
