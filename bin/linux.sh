#!/bin/bash

#Check the OS type is Linuxi
if [ $(uname) != "Linux" ]; then
    echo "This is not a Linux system" 2>> linuxsetup.log
    exit
fi 

#makes the .TRASH directory if it does not exist
mkdir -p ~/.TRASH

#if statement that checks if .vimrc exists in the home directory and if it does then it renames .vimrc and then prints a statement saying the name was changed
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.bup\ vimrc
	echo "The current .vimrc file was changed to .bup vimrc" >> ~/linuxsetup.log
fi

#redirects the contents of vimrc to .vimrc
cat ~/.dotfiles/etc/vimrc > ~/.vimrc

#adds the statement to the end of the .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
