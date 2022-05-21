#!/bin/bash

# Install direnv
curl -sfL https://direnv.net/install.sh | bash

# Install FiraCode font
sudo apt install fonts-firacode

# Install Spaceship theme to Oh My Zsh
ZSH_CUSTOM="/home/codespace/.oh-my-zsh/custom"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
