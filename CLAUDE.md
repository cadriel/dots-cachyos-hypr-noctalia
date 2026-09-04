# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

`dots-cachyos-hypr-noctalia` — personal dotfiles for a CachyOS + Hyprland (via `hl` Lua config API) + Noctalia
(shell/bar) desktop, plus theming for GTK/Qt/terminal/editor apps. This is not an application; there is no
build, lint, or test suite. Changes are config edits (Lua, TOML, INI, CSS, fish) that take effect when the
relevant app/compositor reloads or restarts.

## Repo layout (important: bare git repo checked out into $HOME)

This is **not** a normal git checkout. It's a bare repo at `~/.dotfiles` with `$HOME` as the work-tree, so the
working directory (`/home/craig`) is not itself a git repo — regular `git` commands run from `~` will fail.
Use the `dots` alias instead (defined in `~/.config/fish/config.fish`):

```sh
dots status
dots diff
dots add <file>
dots commit -m "..."
dots push
```

which expands to:

```sh
/usr/bin/git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" "$@"
```

If working outside a shell that has the alias sourced, use the explicit form:
`git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" <command>`.

Only files explicitly tracked in this bare repo are dotfiles-managed (see `dots ls-files`); everything else
under `$HOME` is untracked and irrelevant to this repo (`status.showUntrackedFiles = no` is set, so untracked
files won't show in `dots status`).

## Applying / installing

- `scripts/apply.sh` — force-checks-out the dotfiles over `$HOME`, backing up any conflicting existing files
  into `~/.dotfiles_backup` (preserving directory structure) before overwriting.
- `scripts/install.sh` — pacman/yay package install list for the apps this config depends on (terminal, file
  manager, browser, fonts, icon themes, qt/gtk theming tools, etc.). Run manually when setting up a new
  machine; it's not idempotent-safe beyond pacman's own `--needed`.

## Architecture: Hyprland config

`~/.config/hypr/hyprland.lua` is just a loader that `require()`s each concern in order from
`~/.config/hypr/config/`:

```
variables → monitors → autostart → environment → permissions → decorations →
animations → layout → misc → inputs → binds → rules → workspaces
```

- `variables.lua` defines shared globals (default apps, monitor names, workspaces-per-monitor) consumed by
  later files — check here first when changing terminal/browser/file-manager or monitor layout.
- `binds.lua` uses `mainMod = "SUPER"` and calls into `noctalia msg <cmd>` (aliased as `noctCall`) for
  Noctalia-shell-specific actions (window switcher, launcher, etc.), and `uwsm app --` (aliased as
  `launchPrefix`) to launch apps under UWSM session management.
- `rules.lua` and `workspaces.lua` are the largest/most-edited files (per-app window rules and
  workspace/monitor assignment) — check `variables.lua`'s `MONITOR1/2/3` and `NUM_WPM` before editing these.

## Theming

Noctalia is the shell/bar (`~/.config/noctalia/config.toml`) and also ships a matching theme applied across
other apps: `gtk-3.0/noctalia.css`, `gtk-4.0/noctalia.css`, `qt5ct/colors/noctalia.conf`,
`qt6ct/colors/noctalia.conf`, `micro/colorschemes/noctalia.micro`, `ghostty/themes/noctalia`. When changing
the color scheme, these are the files that need to stay in sync with each other.
