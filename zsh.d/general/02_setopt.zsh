
#!/usr/bin/env zsh
######################################################################################
# zsh options
# ####################################################################################
# Documentations http://zsh.sourceforge.net/Doc/Release/Options.html
# To see the list of options: #set -o | sort or #print -aC2 ${(kv)options} | sort
#
# Notes:
# These names are case insensitive and underscores are ignored.
# The sense of an option name may be inverted by preceding it with ‘no’, so ‘setopt No_Beep’ is equivalent to ‘unsetopt beep’.

#####################################################################################
# Changing Directories
#####################################################################################
#
setopt auto_cd  		# automatically change to directory if it is a path

#####################################################################################
# Completion
#####################################################################################

setopt AUTO_LIST  		  # Automatically list choices on an ambiguous completion
setopt AUTO_MENU 		    # Menu complete after two tabs
setopt AUTO_PARAM_SLASH 	# $dirname completes with /
setopt AUTO_REMOVE_SLASH 	# Trailing / in completion removed

setopt LIST_PACKED 		   # More compact completion lists
setopt COMPLETE_IN_WORD		# Completion works inside words
setopt ALWAYS_TO_END      # On completion go to end of word
setopt COMPLETE_ALIASES  #  Prevents aliases from being substituted.

#####################################################################################
# Input/Output
# ###################################################################################

setopt path_dirs 		# Perform a path search even on command names with slashes in them.

# Input/Output
setopt    NO_clobber              # this will probihbit 'cat foo > bar' if bar exists. use >! instead
setopt    correct                 # try to correct the spelling of commands
setopt    NO_correct_all          # try to correct the spelling of all arguments in a line
setopt	  APPEND_CREATE			  # allow append redirection (>>) to create file 
								  # (in use only with NO_CLOBBER set)


# Prompting
setopt    prompt_subst            # allow substition with $PS1, etc. Needed for vcs_info