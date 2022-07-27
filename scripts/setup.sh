#!/bin/bash

set -e

copy_and_rename_old() {
  if [ -e $2 ]
  then
    cp $2 $2".old"
  fi 

  cp $1 $2
}
 
######## ZSH AND OHMYZSH ########

FILES_PATH=~/files
mkdir --parents $FILES_PATH

sudo apt update
sudo apt upgrade

######## ZSH ########
sudo apt install zsh
chsh -s $(which zsh)
######## END ZSH ########

######## OHMYZSH ########
sudo apt install curl
if [ ! -e ~/.oh-my-zsh ]
then
  echo "Installing oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
  echo "oh-my-zsh already installed"
fi
copy_and_rename_old $FILES_PATH/ubuntu-config/zsh/.zshrc ~/.zshrc
######## END OHMYZSH ########

######## TMUX ########
sudo apt install -y tmux
copy_and_rename_old $FILES_PATH/ubuntu-config/tmux/.tmux.conf ~/.tmux.conf

######## VSCODE ########
if [[ -z $(snap list | grep vscode) ]]
then
  echo "Installing VSCODE"
  sudo snap install code --classic
  cat $FILES_PATH/ubuntu-config/vscode/vscode-extensions.list | xargs -L 1 code --install-extension
  copy_and_rename_old $FILES_PATH/ubuntu-config/vscode/settings.json ~/.config/Code/User/settings.json
else
  echo "VSCode already installed via snap"
fi
################

######## MINICONDA ########
if [ ! -d ~/miniconda3 ]
then
  echo "Installing Miniconda"
  curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" --output /tmp/miniconda.sh
  echo "78f39f9bae971ec1ae7969f0516017f2413f17796670f7040725dd83fcff5689 /tmp/miniconda.sh" | sha256sum --check
  bash /tmp/miniconda.sh
  rm /tmp/miniconda.sh
else
  echo "Miniconda already installed"
fi
######## END MINICONDA ########

######## NEOVIM ########
sudo apt install neovim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir --parents ~/.config/nvim  
copy_and_rename_old $FILES_PATH/ubuntu-config/nvim/init.vim ~/.config/nvim/init.vim
nvim --headless +PlugInstall +qall
######## END NEOVIM ########

######## VARIOUS PACKAGES ########
sudo apt install -y \
  fzf \
  htop \
  silversearcher-ag
######## END VARIOUS PACKAGES ########