# Dotfiles

My dotfiles and configurations, to be quickly pulled in any new environment.

_________________
## Setup

```bash
git clone https://github.com/shoshijak/dotfiles.git
cd dotfiles
```

_________________
### Bash

```bash
# back up
mv ~/.bash_profile ~/.bash_profile_back
mv ~/.bashrc ~/.bashrc_back
# symlink
ln -s bash/bash_profile ~/.bash_profile
ln -s bash/bashrc ~/.bashrc
ln -s shell/aliases ~/.aliases
ln -s shell/functions ~/.functions
```

Any machine-specific bash setup commands can be kept in `~/.shell_local`.

_________________
### Git

```bash
# back up
mv ~/.gitconfig ~/.gitconfig_back
mv ~/.gitignore_global ~/.gitignore_global_back
# symlink
ln -s git/gitconfig ~/.gitconfig
ln -s git/gitignore_global ~/.gitignore_global
```

#### Configure

```bash
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
```

#### diff-so-fancy

Install from NPM, Nix, brew, or as a package on Arch and Debian Linux, or:

```bash
git clone https://github.com/so-fancy/diff-so-fancy DIFF-SO-FANCY-PATH
export PATH=DIFF-SO-FANCY-PATH:$PATH # add this line to `~/.shell_local`
```

_________________
### Vim

```bash
# back up
mv .vim .vim_back
mv .vimrc .vimrc_back
# set up simlink
ln -s dotfiles/vim/vimrc .vimrc
```

#### Vim Plugins

Install Vundle:
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Open vim and run `:PluginInstall` to install all of the plugins.

Set up YouCompleteMe:

```bash
cd .vim/bundle/YouCompleteMe/
python3 install.py --clangd-completer
```

_________________
### Zsh

```bash
# back up
mv ~/.zshrc ~/.zshrc_back
# symlink
ln -s zsh/zshrc ~/.zshrc
ln -s shell/aliases ~/.aliases
ln -s shell/functions ~/.functions
```

#### oh-my-zsh

Install oh-my-zsh
Install nerdfont

Any machine-specific bash setup commands can be kept in `~/.shell_local`.

