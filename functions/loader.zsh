 #!/usr/bin/env zsh

#Directory variables
ZDOT_LIB_DIR=$ZDOTDIR/lib
ZDOT_FUN_DIR=$ZDOTDIR/functions
#TODO: All loader logic as functions
#imports from old script
# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

TTY_SHELL=0

case $(tty) in 
  (/dev/tty[1-9]) TTY_SHELL=1;; 
esac

autoload -U run-help
autoload run-help-git
 
source $ZDOTDIR/functions/zplug.zsh

for f in $ZDOTDIR/zsh.d/general/??_*; do
        source $f
done

export ZCONF_OS=`uname`

if [ -d  $ZDOTDIR/zsh.d/${ZCONF_OS} ] ; then
	for f in $ZDOTDIR/zsh.d/${ZCONF_OS}/??_*; do
        source $f
done
fi

if [[ "$ZCONF_OS" = "Linux" ]] && ((ZDOT_ENABLE_MOUSE!=0)) ; then 
     source $ZDOT_LIB_DIR/mouse.zsh
     zle-toggle-mouse
fi

# zplug check returns true if argument repository exists
#if zplug check b4b4r07/enhancd; then
    # setting if enhancd is available
#    export ENHANCD_FILTER=fzf-tmux
#fi

#if [ -r  ${ZDOTDIR}/.zsh_env ] ; then
#	source ${ZDOTDIR}/.zsh_env
#fi

zpcompinit

zplugin cdreplay -q # -q is for quiet

#http://zsh.sourceforge.net/Doc/Release/Shell-Builtin-Commands.html#index-tty_002c-freezing
#ttyctl -f
