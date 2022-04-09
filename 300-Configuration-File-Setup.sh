#!/bin/bash

##################################################
########### Configuration Setup Script ###########
##################################################

#####################
##### vim setup #####
#####################

# Add .vimrc to ~/
cp home/.vimrc ~/

#####################
##### zsh setup #####
#####################

# Copy zsh-autosuggestions plugin
cp -r /usr/share/zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

# Copy zsh-syntax-highlighting plugin
cp -r /usr/share/zsh/plugins/zsh-syntax-highlighting ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

###################################
##### Various System Settings #####
###################################

# Set time to local-time (Dual Boot with Windows)
sudo timedatectl set-local-rtc 1 --adjust-system-clock
