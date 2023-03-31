# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim:
syntax on
set number
set autoindent
set ruler
color elflord
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

## .bashrc
This is my custom .bashrc configuration for Bash.

## bashrc-custom
This is my custom configurations for bash:
alias cdd="cd .."
alias lsa="ls -A"
alias lsl="ls -l"
alias lsal="ls -Al"
alias targz=targzfunc
alias untar=untarfunc
alias cselab="ssh -p 222 username@129.252.130.???"
alias trash="mv -t ~/.TRASH"
alias rmtrash="rm -rf ~/.TRASH/*"
# Function to tar -zcvf a directory
function targzfunc() {
VAR=$1;
VAR=${VAR%/};
tar -zcvf "$VAR.tar.gz" ./"$VAR"
}
# Function to tar -xvf a .tar.gz file.
function untarfunc() {
VAR=$1
VAR=${VAR}
tar -xvf ./"$VAR"
}

## Makefile
This is my Makefile it runs a linux.sh script and then runs the cleanup.sh script

## linux.sh
This script checks if the OS is linux and if not it dumps an error and exits. It also creates a .TRASH directory if not already created. Additionally, it checks if .vimrc is in your home directory and if it is then it renames it to bup-vimrc. It also then redirects the contents of vimrc to .vimrc and adds the statement source ~/.dotfiles/etc/bashrc-custom.

##cleanup.sh 
This cleans up what linux.sh does by removing the .vimrc from the home directory and removes the line source ~/.dotfiles/bashrc-custom. It also removes the .TRASH directory
