#!/bin/sh

##################################
##### Installing Zsh Plugins #####
##################################

git clone git@github.com:ergenekonyigit/lambda-gitster.git
cd lambda-gitster
cp lambda-gitster.zsh-theme ~/.oh-my-zsh/custom/themes
cd ..
rm -rf lambda-gitster

git clone git@github.com:tobyjamesthomas/pi.git
cd pi
cp pi.zsh-theme ~/.oh-my-zsh/custom/themes
cd ..
rm -rf pi

git clone git@github.com:jeffreytse/zsh-vi-mode.git ~/.oh-my-zsh/custom/plugins/zsh-vi-mode
git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-vi-mode
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

##########################################
##### Copy over .zshrc configuration #####
##########################################

cp -r .oh-my-zsh/custom/aliases ~/.oh-my-zsh/custom/
cp home/.zshrc ~/.zshrc

##########################################
##### Copy over neovim configuration #####
##########################################

cp -r .config/nvim ~/.config
