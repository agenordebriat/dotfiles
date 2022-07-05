#!/opt/homebrew/bin/fish

# Update bat binary cache
bat cache --build

# Install pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -

# Install Node.js
pnpm env use --global latest

# Install Node packages
pnpm add -g @antfu/ni

# Copy fonts
read -n1 -P "Make sure the fonts are downloaded from the iCloud Drive.
Press any key to continue..."
cp -R /Users/(whoami)/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/Polices/Dank\ Mono\ Nerd\ Font/ /Library/Fonts

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
