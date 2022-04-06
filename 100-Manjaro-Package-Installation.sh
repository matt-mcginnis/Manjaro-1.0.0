#!/bin/bash

########################################################
########### Installation of Manjaro Packages ###########
########################################################

# It is important to run sudo pacman -Syu and 
# reboot after a fresh installation. This script 
# is intended to be run directly after a fresh 
# installation and reboot.

#########################################
##### Loading Mirrors and Updating  #####
#########################################

# Replace pacman.conf with personal configuration
sudo rm /etc/pacman.conf
sudo cp ~/Github/Manjaro-1.0.0/etc/pacman.conf /etc/

# Create mirror list
sudo pacman-mirrors --geoip

# Update repositories and packages
sudo pacman -Syyu

################################
##### Package Installation #####
################################

# Install code
sudo pacman -S code

# Install github-cli
sudo pacman -S github-cli

# Install gvim
sudo pacman -S gvim

##################
### For Python ###
##################

# Install pyenv
sudo pacman -S pyenv

# Install qutebrowser
sudo pacman -S qutebrowser
