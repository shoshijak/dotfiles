# Dotfiles

My dotfiles and configurations, to be quickly pulled in any new environment.

_________________
## Setup

```bash
cd
git clone https://github.com/shoshijak/dotfiles.git
cd dotfiles
./install.sh # Quick install - or follow the individual instructions below
```

_________________
### Bash

```bash
# back up
mv ~/.bash_profile ~/.bash_profile_back
mv ~/.bashrc ~/.bashrc_back
# symlink
ln -s dotfiles/bash/bash_profile ~/.bash_profile
ln -s dotfiles/bash/bashrc ~/.bashrc
```
_________________
### Git

```bash
# back up
mv ~/.gitconfig ~/.gitconfig_back
mv ~/.gitignore_global ~/.gitignore_global_back
# symlink
ln -s dotfiles/git/gitconfig ~/.gitconfig
ln -s dotfiles/git/gitignore_global ~/.gitignore_global
```

#### Configure

```bash
touch ~/.gitconfig_local
```

Write in `gitconfig_local`:
```bash
[user]
   name = TODO
   email = TODO
```

#### diff-so-fancy

Install from NPM, Nix, brew, or as a package on Arch and Debian Linux, or:

```bash
git clone https://github.com/so-fancy/diff-so-fancy DIFF-SO-FANCY-PATH
export PATH=DIFF-SO-FANCY-PATH:$PATH # add this line to `~/.shell_local`
```

_________________
### Shell Stuff

```bash
ln -s dotfiles/shell/aliases ~/.aliases
ln -s dotfiles/shell/functions ~/.functions
```

Any machine-specific shell setup commands can be kept in `~/.shell_local`.

#### Shell Awesomeness (optional)

Install following command-line utilities:

- [`exa`](https://the.exa.website/), a replacement for `ls`
- [`bat`](https://github.com/sharkdp/bat), a replacement for `cat`
- [`vtop`](https://github.com/MrRio/vtop/), a replacement for `top`
- [`dust`](https://github.com/bootandy/dust), a replacement for `du`
- [`procs`](https://github.com/dalance/procs), a replacement for `ps`

_________________
### Vim

Requires Vim 7.4.1578+ compiled with Python3 support, for YouCompleteMe plugin.

Download from https://www.vim.org/download.php.

```bash
# back up
mv ~/.vim ~/.vim_back
mv ~/.vimrc ~/.vimrc_back
# set up simlink
ln -s dotfiles/vim/vimrc ~/.vimrc
ln -s dotfiles/vim ~/.vim
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
ln -s dotfiles/zsh/zshrc ~/.zshrc

#### oh-my-zsh

Install oh-my-zsh
Install nerdfont

