# .bash_aliases
# (c) pcht 199x - 2017
alias ls='ls -F --color'
alias l='ls -l'
alias d='ls -al | egrep ^d'
alias dl='ls -al | egrep ^l'
alias ll='ls -al'
alias sc=screen
alias h=history
alias td='todo -c --filter -done,+children'
alias tdall='todo --force-colour -A|less -r'
alias go=gnome-open
alias pp='python -mjson.tool'
alias cd='cd -P'
# end .bash_aliases
