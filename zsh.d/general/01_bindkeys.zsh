#!/usr/bin/env zsh
#Set line editor key bindings
# Emacs mode
# bindkey -e
#
# Vi mode
bindkey -v
# vim mode key bindings

export KEYTIMEOUT=1 # set small timeout for switching between vim modes

# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history
#
# # backspace and ^h working even after
# # returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
#
# # ctrl-w removed word backwards
bindkey '^w' backward-kill-word
#
# # ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward
 
