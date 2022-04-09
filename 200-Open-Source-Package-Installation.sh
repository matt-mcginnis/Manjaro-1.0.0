#!/bin/bash

#####################################################
########## Visual Studio Code Installation ##########
#####################################################

git clone https://aur.archlinux.org/visual-studio-code-bin.git

cd visual-studio-code-bin

makepkg -si

############################################
########## oh-my-zsh Installation ##########
############################################

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

git clone git@github.com:jeffreytse/zsh-vi-mode.git ~/.oh-my-zsh/plugins

sudo rm ~/.oh-my-zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
sudo cp ~/Github/Manjaro-1.0.0/zsh-plugins/zsh-vi-mode.plugin.zsh ~/.oh-my-zsh/plugins/zsh-vi-mode
