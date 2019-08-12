#!/bin/bash

echo "Make Vim KiraKira like hyungseok's vim/.."

echo "First, Install Vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "vim Vundle install finished..."

echo "moved vim & bash configure.."

cp ./.bashrc ~/
cp ./.vimrc ~/

echo "moved finished.."

