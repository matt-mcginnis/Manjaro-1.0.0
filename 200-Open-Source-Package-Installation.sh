#!/bin/bash

############################################
########## oh-my-zsh Installation ##########
############################################

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

git clone git@github.com:jeffreytse/zsh-vi-mode.git ~/.oh-my-zsh/plugins
