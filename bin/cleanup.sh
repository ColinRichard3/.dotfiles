#!/bin/bash

#Removes .vimrc file in home directory
rm -f ~/.vimrc

#Remove the line 'source ~/.dotfiles/bashrc custom' in the .bashrc file in home directory
sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' ~/.bashrc

#Remove the .TRASH directory inside of home directory
rm -rf ~/.trash
