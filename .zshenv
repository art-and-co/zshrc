#!/usr/bin/env zsh

#Define some of XDG Base directories if not set
XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-${HOME}/.config}
XDG_DATA_HOME=${XDG_DATA_HOME:-${HOME}/.local/share}
XDG_CACHE_HOME=${XDG_CACHE_HOME:-${HOME}/.cache}

# If $ZDOTDIR is not set then set it
# If it is not set and is set by this file, then this file
# has to be in the root of the home directory
ZDOTDIR=${ZDOTDIR:-${XDG_CONFIG_HOME}/zshrc} 


#This variable as well is used by oh-my-zsh
ZCACHE_DIR="${XDG_CACHE_HOME}/zsh"

ZSH_CACHE_DIR="${ZCACHE_DIR}/zcompcache"
