# .bashrc bash start script
# (c) Pcht 2007-2017

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# autocheck local mail
export MAIL=/var/mail/$USER
export MAILCHECK=30


export EDITOR=vim

export PATH=".:$HOME/bin:$PATH:/usr/sbin:/sbin"
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

test -f ~/dotfiles/.bash_prompt && source ~/dotfiles/.bash_prompt

# dircolors
# To create the file: dircolors -p 
if [ -f ~/dotfiles/.dircolors ]; then
    eval "`dircolors ~/dotfiles/.dircolors`"
fi

# I love google-chrome :)
export BROWSER=google-chrome

# very min bash aliases
alias ls='ls -F --color'
alias l='ls -l'
alias ll='ls -al'

test -f ~/dotfiles/.bash_aliases && source ~/dotfiles/.bash_aliases

# RUST env https://www.rust-lang.org/fr-FR/
test -f $HOME/.cargo/env && source $HOME/.cargo/env
# end .bashrc
