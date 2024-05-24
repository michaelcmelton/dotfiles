#!/bin/bash

if ! command -v brew &> /dev/null
then
    echo "${GREEN}Installing Brew...." 
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "${GREEN}Brew already installed, skipping installation..."