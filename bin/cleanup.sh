#!/bin/bash

#remove .vimrc in home directory
rm ~/.vimrc

#remove line from .bashrc
sed -i '/source ~\/.dotfiles\/bashrc_custom/d' ~/.bashrc

#remove .TRASH directory
rm -r ~/.TRASH
