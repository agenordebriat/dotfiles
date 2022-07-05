#!/usr/bin/env zsh

# Install Xcode Command Line Tools
xcode-select --install

# Intall Rosetta
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install chezmoi
brew install chezmoi

# Setup the dotfiles
echo "Choose your profile (\"personal\" or \"work\"):"
chezmoi init --apply agenordebriat
