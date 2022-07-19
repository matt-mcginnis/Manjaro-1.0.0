#!/bin/sh

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

#######################################
##### Adding Git SSH Key and Settings #####
#######################################

git config --global user.email "mcginnisma90@gmail.com"
git config --global user.name "Matt McGinnis"
git config --global core.editor "nvim"

################################
##### Package Installation #####
################################

# Install base-devel
sudo pacman -S base-devel

# Install vs code
sudo pacman -S code

# Install Docker
sudo pacman -S docker

# Install fuzzy finder
sudo pacman -S fzf

# Install gvim
sudo pacman -S neovim

# Install kio-gdrive (Google Drive)
sudo pacman -S kio-gdrive

# Install nodejs and npm
sudo pacman -S nodejs npm

# Install pyenv
sudo pacman -S pyenv

# Install pywal
sudo pip3 install pywal

# Install qutebrowser
sudo pacman -S qutebrowser

# Install ripgrep
sudo pacman -S ripgrep

# Install texlive-most
sudo pacman -S texlive-most

# Install unzip
sudo pacman -S unzip

# Install xsel
sudo pacman -S xsel

#######################
##### Install yay #####
#######################

sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R matt:matt ./yay-git
cd yay-git
makepkg -si
cd ..
sudo rm -rf yay-git

# Install code-features
yay -S code-features

#############################
##### Install Oh-My-Zsh #####
#############################

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
