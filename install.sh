#!/bin/sh

# set -xe
# This is a script for my Neovim Config
DIR=/home/$(whoami)/.config/nvim/
NEWDIR=/home/$(whoami)/.config/nvim.bak
if [ -d "$DIR" ]; then
    clear
    echo "$DIR already exists, backing up your old config"
    mv "$DIR" -v "$NEWDIR"
    if [ -f "/usr/bin/git" ]; then
      git clone https://github.com/kernelk14/kernelk-nvim $DIR      
    else
      echo "git is not installed!"
    fi
    echo "\n\n\n"
    echo "installing packer"
    if [ -f "/usr/bin/git" ]; then
      git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    else
      echo "git is not installed!"
    fi
    echo "Done, executing nvim"
    nvim -c PackerSync
else
    clear
    echo "It seems that $DIR does not exist. Creating new config."

    if [ -f "/usr/bin/git" ]; then
      git clone https://github.com/kernelk14/kernelk-nvim $DIR
    else
      echo "git is not installed!"
    fi
    echo "\n\n\n"
    echo "installing packer"
    if [ -f "/usr/bin/git" ]; then
      git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    else
      echo "git is not installed!"
    fi
    echo "Done, executing nvim"
    nvim -c PackerSync
fi

