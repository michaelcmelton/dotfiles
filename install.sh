#/bin/bash

GREEN="\033[0;32m"
ORANGE="\0330;32m"
LOCAL_DOTFILES_DIR=.dotfiles

if ! command -v git &> /dev/null
then
    echo "${GREEN}Installing Git...."

fi

echo "${GREEN}Cloning dotfiles..."
git clone https://github.com/michaelcmelton/dotfiles.git ${LOCAL_DOTFILES_DIR}

if ! command -v brew &> /dev/null
then
    echo "${GREEN}Installing Brew...." 
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "${GREEN}Brew already installed, skipping installation..."

