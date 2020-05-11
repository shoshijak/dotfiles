#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# BASH
mv ~/.bash_profile ~/.bash_profile_back
mv ~/.bashrc ~/.bashrc_back
ln -s "${BASEDIR}"/bash/bash_profile ~/.bash_profile
ln -s "${BASEDIR}"/bash/bashrc ~/.bashrc

# GIT
mv ~/.gitconfig ~/.gitconfig_back
mv ~/.gitignore_global ~/.gitignore_global_back
ln -s "${BASEDIR}"/git/gitconfig ~/.gitconfig
ln -s "${BASEDIR}"/git/gitignore_global ~/.gitignore_global

# SHELL
ln -s "${BASEDIR}"/shell/aliases ~/.aliases
ln -s "${BASEDIR}"/shell/functions ~/.functions

# VIM
mv ~/.vim ~/.vim_back
mv ~/.vimrc ~/.vimrc_back
ln -s "${BASEDIR}"/vim/vimrc ~/.vimrc
ln -s "${BASEDIR}"/vim ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# ZSH
mv ~/.zshrc ~/.zshrc_back
ln -s "${BASEDIR}"/zsh/zshrc ~/.zshrc

