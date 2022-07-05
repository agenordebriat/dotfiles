#!/opt/homebrew/bin/fish

# Install fisher
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# Install fisher plugins
fisher install jorgebucaran/autopair.fish PatrickF1/fzf.fish
