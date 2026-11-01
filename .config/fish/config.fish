source /usr/share/cachyos-fish-config/cachyos-config.fish

# useful aliases
alias dots='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias ssh='ghostty +ssh --'

# starship
starship init fish | source
