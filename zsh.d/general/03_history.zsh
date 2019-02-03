#!/usr/bin/env zsh
#

#history specific
setopt    append_history          # don't overwrite history
setopt    share_history           # share history between all instances
setopt    extended_history        # save each command's beginning timestamp and the duration to the history file
setopt    hist_find_no_dups       # ignore dupes in history search
setopt    HIST_IGNORE_ALL_DUPS    # this will not duplicates in the history
setopt    hist_ignore_space       # remove command lines from the history list when the first character on the line is a space
setopt 	  hist_verify 		  # when doing history substitution, put the substituted line into the line editor
setopt   HIST_REDUCE_BLANKS

SAVEHIST=1000000
HISTFILE=${ZCACHE_DIR}/history 
