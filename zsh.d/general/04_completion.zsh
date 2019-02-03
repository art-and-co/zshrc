#!/usr/bin/env zsh
#

zmodload zsh/complist
#autoload -Uz compinit && compinit -u
_force_rehash() {
  (( CURRENT == 1 )) && rehash
  return 1
}
# Use caching to make completion for cammands such as dpkg and apt usable.
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path "$XDG_CACHE_HOME/zsh"
zstyle ':completion:*' menu select
#zstyle ':completion:*' rehash true

# Group matches and describe.
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
#
# # Fuzzy match mistyped completions.
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
#
# # Increase the number of errors based on the length of the typed word.
 zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'
#
# Don't complete unavailable commands.
 zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec))'
#
# Array completion element sorting.
 zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters 

#Binary file completion

BINARY_FILES='*.(o|a|so|aux|dvi|log|swp|fig|bbl|blg|bst|idx|ind|out|toc|class|pdf|ps|pyc)'

#
# no binary files for vi or textmate
zstyle ':completion:*:vi:*' ignored-patterns $BINARY_FILES
zstyle ':completion:*:vim:*' ignored-patterns $BINARY_FILES
zstyle ':completion:*:nvim:*' ignored-patterns $BINARY_FILES
zstyle ':completion:*:gvim:*' ignored-patterns $BINARY_FILES
# no binary files for less
zstyle ':completion:*:less:*' ignored-patterns $BINARY_FILES
zstyle ':completion:*:zless:*' ignored-patterns $BINARY_FILES
# pdf for xpdf
zstyle ':completion:*:xpdf:*' files '*.pdf'
# tar files
zstyle ':completion:*:tar:*' files '*.tar|*.tgz|*.tz|*.tar.Z|*.tar.bz2|*.tZ|*.tar.gz'

