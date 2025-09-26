# gud-tmux

This is a gud tmux configuration for macOS and Linux

Require tmux ≥ 3.2

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

