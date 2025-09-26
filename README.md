# gud-tmux

This is a gud tmux configuration for macOS and Linux

Requires `tmux ≥ 3.3` and `git`

## Features

- Pretty Status Bar 
  - Bar is up on bottom (top bars are for cowards) with:
  - Session + host on the left so you know where the hell you are
  - Live net speeds (up / down)
  - CPU + RAM 
  - Clock
- Dynamic scrollback buffer: 
  - Scales with your RAM — 32k lines per GB, minimum 50k. 
  - If you’ve got 64GB, congrats, you get 2 million lines of scrollback.
- Clipboard that actually works
  - OSC52 first, falls back to wl-copy, xclip, or pbcopy depending on where you are.
- TPM plugins baked in:
  - tmux-sensible
  - tmux-yank 
  - tmux-cpu
  - tmux-net-speed
- Quality of life: 
  - mouse mode
  - splits open in the same dir
   - `|` vertical
   - `$` horizontal
  - big history
  - sensible defaults.

## Installation

1. Clone repo to `~/.tmux`

`git clone https://github.com/crag-h4k/gud-tmux.git $HOME/.tmux --recursive`

2. Make symlink a for `~/.tmux.conf` 

`ln -s $HOME/.tmux/tmux.conf $HOME/.tmux.conf`

3. Rejoice

### Adding new plugins

1. Add plugins to `tmux.conf`
2. Start tmux session

```sh
tmux
```

3. prefix + I (capital i, as in Install) to fetch the plugin.

```sh
(ctrl+b) + I
```
