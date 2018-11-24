#!/bin/bash
cecho(){
    BLACK="\033[0;30m"
    BLUE="\033[0;34m"
    GREEN="\033[0;32m"
    CYAN="\033[0;36m"
    RED="\033[0;31m"
    PURPLE="\033[0;35m"
    ORANGE="\033[0;33m"
    LGRAY="\033[0;37m"
    DGRAY="\033[1;30m"
    LBLUE="\033[1;34m"
    LGREEN="\033[1;32m"
    LCYAN="\033[1;36m"
    LRED="\033[1;31m"
    LPURPLE="\033[1;35m"
    YELLOW="\033[1;33m"
    WHITE="\033[1;37m"
    NORMAL="\033[m"

    color=\$${1:-NORMAL}

    echo -ne "$(eval echo ${color})"
    cat

    echo -ne "${NORMAL}"
}

spicy () [[ -n $SPICY ]]

printf "Welcome to FRIED FISH\n\n" | cecho LGREEN
printf "WARNING!! This script removes the ~/.config and the ~/.local directories\n" | cecho YELLOW
read -p "Would you like to proceed? [y/n/s] " -n 1 -r 
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    export YES=true
fi
if [[ $REPLY =~ ^[Ss]$ ]]
then
    export YES=true
    export SPICY=true
fi
if [[ -z YES ]]
then
    exit
fi

config=~/.config
local=~/.local
rm -rf $config
rm -rf $local

spicy && git clone https://github.com/jcristol/Fried-Fish-Shell-Config $config

printf "\n\nInstalling brew packages\n\n" | cecho LGREEN
spicy && brew install bat
spicy && brew install exa
brew install fish
spicy && brew install neovim


spicy && printf "Installing nvm\n\n" | cecho LGREEN
spicy && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

printf "Installing fisher the fish package manager\n\n" | cecho LGREEN
fish -c "curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish"

printf "Installing useful fish plugins\n\n" | cecho LGREEN
fish -c "fisher add edc/bass"

spicy && fish -c "fisher add FabioAntunes/fish-nvm"

fish -c "fisher add jethrokuan/z"
fish -c "fisher add laughedelic/fish_logo"
fish -c "fisher add oh-my-fish/theme-default"
fish -c "fisher add cbsghost/fish-legacycolor"

spicy && cat fried_fish_functions.fish | fish

spicy && printf "Installing node using fnvm\n\n" | cecho LGREEN
spicy && fish -c "nvm install node"

printf "Changing the default shell... Will prompt for your password twice\n\n" | cecho LGREEN
chsh -s /usr/local/bin/fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells

printf "Install oh my fish for a dope theme\n\n" | cecho LGREEN
curl -L https://get.oh-my.fish | fish