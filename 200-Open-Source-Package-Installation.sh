#!/bin/bash

#####################################################
########## Visual Studio Code Installation ##########
#####################################################

# In order to install VS Code run the following in the ~/ directory

#git clone https://aur.archlinux.org/visual-studio-code-bin.git
#cd visual-studio-code-bin
#makepkg -si

############################################
########## oh-my-zsh Installation ##########
############################################

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

git clone git@github.com:jeffreytse/zsh-vi-mode.git ~/.oh-my-zsh/plugins
