#!/usr/bin/env zsh

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/bin/platform-tools" ]; then
    PATH="$HOME/bin/platform-tools:$PATH"
fi

alias man='man -L ru'

export MANPATH="~/.config/manpages:$MANPATH"

#Supported themes
ZDOT_THEME_CONSOLE="bhilburn/powerlevel9k"
ZDOT_THEME_TTY="OMZ::themes/af-magic.zsh-theme"

#Enable mouse support? Good for xterm, termite and similar
#Linux only
ZDOT_ENABLE_MOUSE=0

#Loads all configuration
source $ZDOTDIR/functions/loader.zsh

