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
sudo rm -R /var/lib/pacman/sync
sudo cp etc/pacman.conf /etc/

# Create mirror list
sudo pacman-mirrors --geoip

# Update repositories and packages
sudo pacman -Syyu

################################
##### Package Installation #####
################################

# Install base-devel (For VS Code Install)
sudo pacman -S base-devel

# Install github-cli
sudo pacman -S github-cli

# Install gnome-keyring (For Signing in to VS Code)
sudo pacman -S gnome-keyring

# Install gvim
sudo pacman -S gvim

# Install kio-gdrive (Google Drive)
sudo pacman -S kio-gdrive

# Install pyenv
sudo pacman -S pyenv

# Install qutebrowser
sudo pacman -S qutebrowser

# Install ranger
sudo pacman -S ranger

# Install unzip
sudo pacman -S unzip
