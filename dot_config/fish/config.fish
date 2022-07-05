fish_add_path /opt/homebrew/bin

set -g fish_greeting
set -Ux EDITOR "code --wait"

# Set colors
set -l comment 637777
set -l white d7dbe0

set -g fish_color_autosuggestion      $comment
set -g fish_color_cancel              -r
set -g fish_color_command             green
set -g fish_color_comment             $comment
set -g fish_color_end                 magenta
set -g fish_color_error               red
set -g fish_color_escape              cyan
set -g fish_color_history_current     --bold
set -g fish_color_match               --background=blue
set -g fish_color_normal              normal
set -g fish_color_operator            normal
set -g fish_color_param               $white
set -g fish_color_quote               yellow
set -g fish_color_redirection         yellow
set -g fish_color_search_match        'yellow' '--background=637777'
set -g fish_color_selection           'd7dbe0' '--bold' '--background=black'
set -g fish_color_status              red
set -g fish_color_valid_path          --underline
set -g fish_pager_color_completion    normal
set -g fish_pager_color_description   yellow
set -g fish_pager_color_prefix        'd7dbe0' '--bold' '--underline'
set -g fish_pager_color_progress      'd7dbe0' '--background=blue'

set -Ux BAT_THEME "Night Owl"
set -Ux LS_COLORS ""

# fzf
# https://minsw.github.io/fzf-color-picker/
set -Ux FZF_DEFAULT_OPTS "
--color=fg:#d7dbe0,bg:#011627,hl:#7fdbca
--color=fg+:#ffffff,bg+:#011627,hl+:#82aaff
--color=info:#ecc48d,prompt:#22da6e,pointer:#82aaff
--color=marker:#7fdbca,spinner:#ecc48d,header:#c792ea"

# 1Password
set -Ux SSH_AUTH_SOCK ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# fzf.fish
set fzf_fd_opts --hidden --exclude=.git
fzf_configure_bindings --directory=\cf --git_log=\cl --git_status=\cs --processes=\cp

# Starship
starship init fish | source

# zoxide
zoxide init fish | source
