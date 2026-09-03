27;2;13~# dots-cachyos-hypr-noctalia

## Installation

1. Clone the dotfiles

```sh
git clone --bare git@github.com:cadriel/dots-cachyos-hypr-noctalia.git $HOME/.dotfiles
```

2. Apply. This will backup, and checkout the dotfiles.
```sh
```

```sh
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" checkout -- scripts/apply.sh \
chmod 755 ~/scripts/apply.sh
```

```sh
./scripts/apply.sh
```

4. Run the install
```sh
cd ~
chmod 755 ./scripts/install.sh
./scripts/install.sh
```
