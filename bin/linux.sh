#!/bin/bash
#Checks if operating system is linux
if [ "$(uname)" != "Linux" ]; then
	echo "Error: not a Linux system" >> linuxsetup.log
	exit
fi

#Creates '.TRASH' directory in home directory if it doesn't exist already
mkdir -p ~/.TRASH

#Changes .vimrc file to '.bup_vimrc' if it already exists in home directory and dumps a message to linuxsetup.log saying it was changed
if [ -e ~/.vimrc ]; then
	mv ~/.vimrc ~/.bup\ vimrc
	echo "Renamed '.vimrc' to '.bup_vimrc" >> linuxsetup.log
fi

#Overwrites the contents of the etc/vimrc file to '.vimrc' located in the home directory
cat ./etc/vimrc >> ~/.vimrc

#Adds the statement ‘source ∼/.dotfiles/etc/bashrc custom’ to the end of the .bashrc file located in home directory
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc 
echo "source ~/.dotfiles/etc/bashrc_custom" >> linuxsetup.log



