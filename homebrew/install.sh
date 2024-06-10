#!/bin/zsh

if ! command -v brew &> /dev/null
then
    printf "ℹ️ Homebrew is not installed. Installing Homebrew...\n\n"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    printf "✅ Homebrew is installed.\n\n"
else
    printf "✅ Homebrew is already installed. Skipping installation...\n\n"
fi

# Install Homebrew packages
printf "🍺 Installing Homebrew packages...\n"
brew bundle --file="~/.config/homebrew/Brewfile"