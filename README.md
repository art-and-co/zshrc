# Zsh Dot files

## Table of Contents

- [Zsh Dot files](#zsh-dot-files)
  - [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [Implementation](#implementation)
  - [Notes](#notes)
  - [Plugins](#plugins)
  - [Limitations](#limitations)

## Installation

This Zsh configuration assumes existence of `$ZDOTDIR`.  

Two possible default locations is to set by copying `.zshenv` to `$HOME/.zshenv` or at system ZSH profile.  

As well it caches all relevant data at `$XDG_CACHE_HOME/zsh`, which in most cases points to `$HOME/.cache/zsh`.  

This configuration requires Git and SVN client to work properly. Pygments are used for some parts of colorization.

## Implementation

This configuration is using [Zplugin](https://github.com/zdharma/zplugin) as an engine. It is assumed that Zplugin is available in all parts of loading scripts.  

All configuration is split into seperate files and it has specific bits for Linux and MacOS.  


## Notes

In GUI consoles it uses [Powerlevel9k](https://github.com/bhilburn/powerlevel9k) theme. In TTY it uses one of OMZ themes. If needed themes are easy to change.

## Plugins

[fzf](https://github.com/junegunn/fzf) - A binary release of `fzf`  
[direnv](https://github.com/direnv/direnv) - A binrary release of direnv  
[wd](https://github.com/mfaerevaag/wd) - Jump to custom directories  

Commands and aliases:

- `ccat` - colorized cat
- `ls` commands:
  - `ll`
  - `l`
  - `k`

Colorization:  

- Man pages  
- Command line itself
- `ls`, `diff`, `grep`

## Limitations

Currently there is hard-coded order of loading. First it loads general section then OS specific.  
