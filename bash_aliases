


#!/bin/sh

# Retrieve machine name 
mcname=`uname -n`

# Re-source bashrc
alias bashrc=". ~/.bashrc"

# Echo machine characteristics
alias un="uname -a"

# Regular commands
alias rm="rm -i"
alias ls="ls -bF --color"
alias cp="cp -i"
alias mv="mv -i"
alias c="clear"
alias ll="ls -al"
alias dir="ls -bF"
alias grep="grep -n --color"
alias psg="ps -ef|grep"
alias l="ls -ltF"
alias lx="ls -ltFX"
alias rmt="rm *~"
alias py="python"
alias ff="firefox"
alias oo="openoffice.org-2.0"
alias gd="gedit"
alias ev="evince"
alias cdd="cd .."
alias cd4="cd ../../../.."
alias cd3="cd ../../.."
alias cd2="cd ../.."
alias trash="/bin/rm -rf ~/.Trash/*"
alias ds="du -hs"
alias dbox="~/.dropbox-dist/dropboxd &"
alias brm="/bin/rm"
alias lns="ln -s"
alias tree="tree --charset=ASCII"
alias cdr="cd -; cd -"

# Git alias
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '

# XPS system
alias xpss="xps system &"

# Emacs
alias ea="emacs -nw"
alias em="emacs -nw"
alias ra="emacs -nw"
alias e="emacs -nw"

# Python
alias py="python"

# Remote Desktop
alias rdesktop="rdesktop -g 1154x864 -a 16"

# SSH shorthands

# Modelsim check
alias vmpf="vsim *.mpf &"

# Generic alert on GUI - Useful for multi-tasking across workspaces
# USAGE: alert "<custom message>"
alias alert="zenity --info --text "

# Reckless rm prevention script
alias rm='safe_rm'
safe_rm() # Safe rm procedure
{
    # Cycle through each argument for deletion
    for file in $*; do
        if [ -e $file ]; then
	        
            # Target exists and can be moved to Trash safely
            if [ ! -e ~/.Trash/$file ]; then
                mv $file ~/.Trash

            # Target exists and conflicts with target in Trash
            elif [ -e ~/.Trash/$file ]; then

                # Increment target name until 
                # there is no longer a conflict
                i=1
                while [ -e ~/.Trash/$file.$i ];
                do
                    i=$(($i + 1))
                done

                # Move to the Trash with non-conflicting name
                mv $file ~/.Trash/$file.$i
            fi
	        
        # Target doesn't exist, return error
        else
            echo "rm: $file: No such file or directory";
        fi
    done
}


# MKDIR and then CD
function mkcd() 
{
    mkdir -p $@
    cd $@
}
