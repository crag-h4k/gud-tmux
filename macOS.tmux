set -g @plugin 'plugins/tpm'
set -g @plugin 'plugins/tmux-yank'
set -g @plugin 'plugins/tmux-sensible'

set-option -g default-command "reattach-to-user-namespace -l $SHELL"
set -g default-terminal "screen-256color"

set -g mouse on
set -g history-limit 50000

if-shell "uname | grep -q Darwin" "source-file macos-opts.tmux"
run -b '~/.tmux/plugins/tpm/tpm'
#run-shell '~/.tmux/plugins/tmux-yank/yank.tmux'
#run-shell '~/.tmux/plugins/tmux-sensible/sensible.tmux'
