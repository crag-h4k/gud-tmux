# Make sure to install `reattach-to-user-namespace`
# brew install reattach-to-user-namespace
set-option -g default-command "reattach-to-user-namespace -l $SHELL"
bind -n WheelUpPane if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= '#{pane_in_mode}' 'send-keys -M' 'select-pane -t=; copy-mode -e; send-keys -M'"
bind -n WheelDownPane select-pane -t= \; send-keys -M
