# .bashrc bash start script
# (c) Pcht 2007-2018

# If not running interactively, don't do anything
[ -z "$PS1" ] && return
echo ">> .bashrc"

# autocheck local mail
export MAIL=/var/mail/$USER
export MAILCHECK=30

export LANG=fr_FR.UTF-8

# history : don't put duplicate lines in the history. Ignore line begin with space
export HISTCONTROL=ignoredups:ignorespace
# ... add timestamp
export HISTTIMEFORMAT="[%d/%m/%Y %H:%M:%S] "
### append history to file
shopt -s histappend
### check before use history command (like !!)
shopt -s histverify

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

## autocd
shopt -s autocd

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# from http://thesmithfam.org/blog/2009/01/06/best-bash-prompt-ever/#comments 
# color change with $? result
BLACK="\[\033[0;30m\]"
DARK_GRAY="\[\033[1;30m\]"
LIGHT_GRAY="\[\033[0;37m\]"
BLUE="\[\033[0;34m\]"
LIGHT_BLUE="\[\033[1;34m\]"
GREEN="\[\033[0;32m\]"
LIGHT_GREEN="\[\033[1;32m\]"
CYAN="\[\033[0;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"
RED="\[\033[0;31m\]"
LIGHT_RED="\[\033[1;31m\]"
PURPLE="\[\033[0;35m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
BROWN="\[\033[0;33m\]"
YELLOW="\[\033[1;33m\]"
WHITE="\[\033[1;37m\]"
DEFAULT_COLOR="\[\033[00m\]"

# very basic prompt -- more in .bash_prompt
PROMPT_COMMAND='PS1="[\u@\h] -- \w  "; echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'

# I love google-chrome :)
# export BROWSER=google-chrome
# but w3m is lighter
export BROWSER=w3m
# ... and vim
export EDITOR=vim

# very min bash aliases
alias ls='ls -F --color'
alias l='ls -l'
alias ll='ls -al'

### dotfiles stuff
test -f ~/dotfiles/.bash_aliases && source ~/dotfiles/.bash_aliases
test -f ~/dotfiles/.bash_prompt && source ~/dotfiles/.bash_prompt
test -d ~/dotfiles/bash_completion && { 
	for f in ~/dotfiles/bash_completion/*.bash; 
	do source $f; 
	done; 
}
# To create the file: dircolors -p 
test -f ~/dotfiles/.dircolors && eval "`dircolors ~/dotfiles/.dircolors`"

### .local stuffs
# manpath
export MANPATH=$HOME/.local/share/man:

# added by Nix installer
# od it in .bash_profile if [ -e /home/patrick/.nix-profile/etc/profile.d/nix.sh ]; then . /home/patrick/.nix-profile/etc/profile.d/nix.sh; fi 

# autolaunch tmux
# https://wiki.archlinux.org/index.php/Tmux#Bash
# test $- != *i*  && return
# test -z "$TMUX" -a "$TERM" == "st-256color" && {
#   test -n "$(tmux ls 2>/dev/null)" && exec tmux attach || exec tmux
# }

# use gpg-agent for gpg 
# from gpg-agent(1)
 if [ -f "~/.gnupg/.gpg-agent-info" ]; then
 	. "~/.gnupg/.gpg-agent-info"
 	export GPG_AGENT_INFO
 	# export SSH_AUTH_SOCK
 fi
GPG_TTY=$(tty)
export GPG_TTY

# fuzzyFinder FIXME bloque la completion
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

### tuir / fork of rtv : reddit terminal Viewer
export TUIR_BROWSER=urlportal.sh
export TUIR_URLVIEWER=urlview

### PATH ##################################################
### rust
test -d $HOME/.cargo/bin && PATH="$HOME/.cargo/bin:$PATH"

### golang - default is $HOME/go/bin
test -d $HOME/go/bin && PATH="$HOME/go/bin:$PATH"

export PATH=.:$HOME/bin:$PATH
# export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin


echo "<< .bashrc"
# end .bashrc
