# gud-tmux

> [!WARNING]
> This repository is deprecated and no longer maintained. Use [crag-h4k/dotfiles](https://github.com/crag-h4k/dotfiles) instead.

A gud tmux configuration for macOS and Linux.

Requires `tmux >= 3.3`, `git`, and `make`.

## Table of Contents

- [Features](#features)
- [Install](#install)
- [Packages](#packages)
- [Symlink management](#symlink-management)
- [Adding plugins](#adding-plugins)

## Features

- Pretty status bar (bottom, because top bars are for cowards):
  - Session + host on the left so you know where you are
  - Live net speeds (up / down)
  - CPU + RAM
  - Clock
- Dynamic scrollback buffer:
  - Scales with RAM: 32k lines per GB, minimum 50k
  - On a 64 GB box you get 2 million lines
- Clipboard that actually works:
  - OSC52 first, falls back to `wl-copy`, `xclip`, or `pbcopy` depending on
    where you are
- TPM plugins baked in: `tmux-sensible`, `tmux-yank`, `tmux-cpu`,
  `tmux-net-speed`
- Quality of life:
  - Mouse mode on
  - Splits open in the same directory (`|` vertical, `$` horizontal)
  - Big history
  - Sensible defaults

## Install

```sh
git clone --recursive https://github.com/crag-h4k/gud-tmux.git "$HOME/.tmux"
make -C "$HOME/.tmux" packages   # optional: brew/apt install
make -C "$HOME/.tmux" install
```

## Packages

```sh
make packages
```

Installs:

- macOS (Homebrew): `tmux`, `reattach-to-user-namespace`
- Debian/Ubuntu (apt): `tmux`, `xclip`

Safe to re-run. See `scripts/install-packages.sh`.

## Symlink management

```sh
make install     # links tmux.conf to ~/.tmux.conf
make uninstall   # removes the managed symlink
make relink      # uninstall + install
make check       # report status
```

`make install` refuses to clobber a real `~/.tmux.conf`: back it up or remove
it first.

The legacy `make-slinks.sh` is deprecated and kept only for one release so
existing runbooks still work. Prefer `make install`.

## Adding plugins

1. Add the plugin to `tmux.conf`.
1. Start a tmux session: `tmux`.
1. Press `prefix + I` (capital i, as in Install) to fetch it:

   ```text
   (ctrl+b) + I
   ```
