#!/bin/sh

set -e

DOTFILES="$HOME/.dotfiles"
DOTFILES_BACKUP="$HOME/.dotfiles_backup"

cd "$HOME"

dots() {
    /usr/bin/git --git-dir="$DOTFILES" --work-tree="$HOME" "$@"
}

mkdir -p "$DOTFILES_BACKUP"

# Find files that would conflict with the dotfiles checkout.
# Back them up while preserving their directory structure.
dots checkout 2>&1 |
    awk '/^\s+\./ {print $1}' |
    while IFS= read -r file; do
        [ -e "$file" ] || continue

        mkdir -p "$DOTFILES_BACKUP/$(dirname "$file")"
        cp -a -- "$file" "$DOTFILES_BACKUP/$file"
    done

# Force the dotfiles checkout over the existing files.
dots checkout -f
