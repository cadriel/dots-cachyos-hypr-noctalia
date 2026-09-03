27;2;13~# dots-cachyos-hypr-noctalia

## Installation

1. Clone the dotfiles

```sh
git clone --bare git@github.com:cadriel/dots-cachyos-hypr-noctalia.git $HOME/.dotfiles
```

2. Add the alias (auto-created via dots once applied)
```sh
alias dots='/usr/bin/git --git-dir="$HOME/.dotfiles" --work-tree="$HOME"'
```

3. Backup existing dotfiles (optional)

```sh
cd ~
mkdir -p .dotfiles-backup && \
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .dotfiles-backup/{}
```

4. Apply the dotfiles

```
dots checkout -f
dots config --local status.showUntrackedFiles no
```

4. Run the install
```sh
cd ~
chmod 755 ./scripts/install.sh
./scripts/install.sh
```
