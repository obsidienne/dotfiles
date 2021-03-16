#!/bin/sh

#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
SYMLINKS=()

ln -sf $PWD/asdfrc ~/.asdfrc
SYMLINKS+=('.asdfrc')
ln -sf $PWD/zshrc ~/.zshrc
SYMLINKS+=('.zshrc')
ln -sf $PWD/gitconfig ~/.gitconfig
SYMLINKS+=('.gitconfig')
ln -sf $PWD/tool-versions ~/.tool-versions
SYMLINKS+=('.tool-versions')
ln -sf $PWD/config/nvim ~/.config/nvim
SYMLINKS+=('.gitconfig')


echo ${SYMLINKS[@]}

