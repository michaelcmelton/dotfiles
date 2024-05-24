#/bin/bash

set -eoux

GREEN="\033[0;32m"
ORANGE="\0330;32m"
LOCAL_DOTFILES_DIR=.dotfiles

if ! command -v git &> /dev/null
then
    echo "${GREEN}Installing Git...."

fi

echo "${GREEN}Cloning dotfiles..."
git clone https://github.com/michaelcmelton/dotfiles.git ${LOCAL_DOTFILES_DIR}

source brew.sh
