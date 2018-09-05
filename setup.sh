#!/bin/bash

ln -s ~/dotfiles_forMobaXterm/.vimrc ~/.vimrc
ln -s ~/dotfiles_forMobaXterm/.zshenv ~/.zshenv

# clean vim bundle
rm -rf ~/dotfiles_forMobaXterm/.vim/bundle/
mkdir ~/dotfiles_forMobaXterm/.vim/bundle
