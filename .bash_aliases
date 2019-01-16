# .bash_aliases
# (c) pcht 199x - 2017
alias ls='ls -F --color'
alias l='ls -lh'
alias d='ls -al | egrep ^d'
alias dl='ls -al | egrep ^l'
alias ll='ls -alh'
alias sc=screen
alias h=history
alias td='todo -c --force-colour --filter -done,+children | less -r'
alias tdall='todo --force-colour -A|less -r'
#alias go=gnome-open
alias pp='python -mjson.tool'
alias cd='cd -P'
alias tm=tmux
alias tma='tmux attach'
alias tmn='tmux new'
# end .bash_aliases
