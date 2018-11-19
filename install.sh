#!/bin/sh

echo "Installing dependencies for Debian-based systems..."

echo "Installing Vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 2>/dev/null
echo "Done."

echo "Installing Plugins..."
vim +PluginInstall +qall
echo "Done."

echo "Copying colors..."
mkdir ~/.vim/colors
cp ~/.vim/bundle/gruvbox/colors/gruvbox.vim ~/.vim/colors/
echo "Done."

