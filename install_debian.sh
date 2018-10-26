#!/bin/sh

echo "Installing dependencies for Debian-based systems..."

echo "Installing Vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 2>/dev/null
echo "Done."

echo "Installing Plugins..."
vim +PluginInstall +qall
echo "Done."

echo "Installing Mucomplete..."
mkdir -p ~/.vim/pack/bundle/start 2>/dev/null
cd ~/.vim/pack/bundle/start && \
git clone --depth 1 https://github.com/lifepillar/vim-mucomplete.git 2>/dev/null
echo "Done."

echo "Installing ctags..."
sudo apt-get install exuberant-ctags 2>/dev/null
echo "Done with installation! Remove ~/.vim to uninstall."
