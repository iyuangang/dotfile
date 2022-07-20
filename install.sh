#!/bin/bash
set -e
cd
#======================================================================================
#                                
# Author  : Tim Yuan
# License : MIT
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================

# this will config your zsh profesional
# this will install xserver
echo "Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Clone zsh plugin zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Install zsh plugin zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Fresh zsh source"
cp .zshrc $HOME
source ~/.zshrc

echo "################################################################"
echo "#################     Plugins installed     ####################"
echo "################################################################"
