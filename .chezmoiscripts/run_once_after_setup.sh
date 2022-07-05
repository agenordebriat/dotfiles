#!/opt/homebrew/bin/fish

# Update bat binary cache
bat cache --build

# Install Node.js
fnm install --lts

# Install global packages
npm i -g @antfu/ni
npm i -g git-open

# Copy fonts
read -n1 -P "Make sure the \"Dank Mono Nerd Font\" folder is downloaded from iCloud Drive.
Press any key to continue..."
cp -R /Users/(whoami)/Library/Mobile\ Documents/com~apple~CloudDocs/Polices/Dank\ Mono\ Nerd\ Font/ /Library/Fonts

# Create projects folder
mkdir ~/Documents/Projects

# Change macOS settings
osascript -e 'tell application "System Preferences" to quit'

# Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock show-process-indicators -bool false
defaults write com.apple.Dock show-recents -bool false
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-br-corner -int 0

killall Dock

# Finder
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder _FXSortFoldersFirst -bool true
defaults write com.apple.finder FXPreferredViewStyle clmv
defaults write com.apple.finder NewWindowTarget PfHm
defaults write com.apple.finder NewWindowTargetPath "file:///Users/$(whoami)/"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

killall Finder

# Network
networksetup -setdnsservers "Belkin USB-C LAN" 1.1.1.1 1.0.0.1
networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1

# Save screen captures to the Downloads folder
defaults write com.apple.screencapture location ~/Downloads/
