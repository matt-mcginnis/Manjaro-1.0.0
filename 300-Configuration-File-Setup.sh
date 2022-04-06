#!/bin/bash

##################################################
########### Configuration Setup Script ###########
##################################################

############################
##### etc file changes #####
############################

# Replace tlp with personal configuration (SOUND_POWER_SAVE_ON_BAT=0)
#sudo rm /etc/default/tlp
#sudo cp ~/GitHub/Manjaro/etc/default/tlp /etc/default/

#############################
##### home file changes #####
############################a

# Add .vimrc to ~/
#cp ~/Github/Manjaro-1.0.0/home/.vimrc ~/

#####################
##### zsh setup #####
#####################

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh-vim-mode
git clone https://github.com/softmoth/zsh-vim-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vim-mode

# Copy custom .zshrc
#rm ~/.zshrc
#cp ~/Github/Manjaro-1.0.0/home/.zshrc ~/.zshrc

###################################
##### Various System Settings #####
###################################

# Set time to local-time (Dual Boot with Windows)
sudo timedatectl set-local-rtc 1 --adjust-system-clock
