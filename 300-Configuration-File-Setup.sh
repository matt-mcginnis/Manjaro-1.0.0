#!/bin/bash

##################################################
########### Configuration Setup Script ###########
##################################################

#####################
##### vim setup #####
#####################

# Add .vimrc to ~/
cp ~/Github/Manjaro-1.0.0/home/.vimrc ~/

#####################
##### zsh setup #####
#####################

# Copy zsh-autosuggestions plugin
cp -r /usr/share/zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

# Copy zsh-syntax-highlighting plugin
cp -r /usr/share/zsh/plugins/zsh-syntax-highlighting ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

# Copy custom .zshrc
rm ~/.zshrc
cp ~/Github/Manjaro-1.0.0/home/.zshrc ~/.zshrc

###################################
##### Various System Settings #####
###################################

# Set time to local-time (Dual Boot with Windows)
sudo timedatectl set-local-rtc 1 --adjust-system-clock
