#!/usr/bin/env zsh

# Binary release in archive, from Github-releases page; after automatic unpacking it provides command "fzf"

zplugin ice from"gh-r" as"program"; zplugin load junegunn/fzf-bin

#ZSH_TMUX_AUTOSTAR=true


# plugins
    zplugin snippet OMZ::plugins/sudo/sudo.plugin.zsh
    zplugin ice svn; zplugin snippet OMZ::plugins/command-not-found
    
    #zplug "plugins/gitfast",   from:oh-my-zsh
    #zplug "plugins/svn",   from:oh-my-zsh
    #zplug "plugins/tmux",   from:oh-my-zsh
    #zplug "plugins/fasd",   from:oh-my-zsh
    zplugin ice wait"1" lucid
    zplugin ice svn; zplugin snippet OMZ::plugins/pip
    #zplug "plugins/archlinux",   from:oh-my-zsh
    zplugin ice wait"1" lucid
    zplugin snippet OMZ::plugins/systemd/systemd.plugin.zsh
    #zplug "plugins/tmuxinator",   from:oh-my-zsh
    zplugin ice wait"1" lucid
    zplugin snippet OMZ::plugins/virtualenv/virtualenv.plugin.zsh
    
    zplugin light rimraf/k
    zplugin light zdharma/history-search-multi-word

    zplugin ice wait"0" atload"_zsh_autosuggest_start"
    zplugin light zsh-users/zsh-autosuggestions
    # compilation
    zplugin ice wait"0" blockf
    zplugin ice wait"0" atload"_zsh_autosuggest_start"
    zplugin light zsh-users/zsh-completions
    
    zplugin ice wait"1" lucid
    zplugin light bobthecow/git-flow-completion
    #zplug "b4b4r07/enhancd", use:enhancd.sh
    
    
    

export WD_CONFIG="${ZCACHE_DIR}/wd"
zplugin ice as"program" cp"wd.sh -> wd" pick"wd"
zplugin light mfaerevaag/wd

zplugin ice svn pick"completion.zsh" src"git.zsh"
zplugin snippet OMZ::lib
