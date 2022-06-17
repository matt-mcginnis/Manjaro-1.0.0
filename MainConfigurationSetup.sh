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
git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

##########################################
##### Copy over .zshrc configuration #####
##########################################

cp -r .oh-my-zsh/custom/aliases ~/.oh-my-zsh/custom/
cp home/.zshrc ~/.zshrc

cp zsh-plugins/zsh-vi-mode.plugin.zsh ~/.oh-my-zsh/custom/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

##########################################
##### Copy over neovim configuration #####
##########################################

cp -r .config/nvim ~/.config

###########################
##### Copy Wallpapers #####
###########################
cp -r Wallpapers ~/Pictures

# Set time to local-time (Dual Boot with Windows)
sudo timedatectl set-local-rtc 1 --adjust-system-clock
