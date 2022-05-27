#!/bin/sh

##################################
##### Installing Zsh Plugins #####
##################################

git clone https://github.com/ergenekonyigit/lambda-gitster.github
cd lambda-gitster
cp lambda-gitster.zsh-theme ~/.oh-my-zsh/custom/themes
cd ..
rm -rf lambda-gitster

git clone https://github.com/jeffreytse/zsh-vi-mode ~/.oh-my-zsh/custom/plugins/zsh-vi-mode
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-vi-mode
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

##########################################
##### Copy over .zshrc configuration #####
##########################################

cp -r .oh-my-zsh/aliases ~/.oh-my-zsh/custom/
cp home/.zshrc ~/.zshrc

##########################################
##### Copy over neovim configuration #####
##########################################

cp -r .config/nvim ~/.config
