# Make sure to install `reattach-to-user-namespace`
# brew install reattach-to-user-namespace
set-option -g default-command "reattach-to-user-namespace -l $SHELL"
