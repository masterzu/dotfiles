# .bash_aliases
# (c) pcht 199x - 2019
alias ls='ls -F --color'
alias l='ls -lh'
alias d='ls -al | egrep ^d'
alias dl='ls -al | egrep ^l'
alias ll='ls -alh'
alias h=history
alias td='todo -c --force-colour --filter -done,+children | less -r'
alias tdall='todo --force-colour -A|less -r'
alias o=xdg-open
alias pp='python -mjson.tool'
alias cd='cd -P'
alias tm=tmux
alias tma='tmux attach'
alias tmn='tmux new'

# racourcis
alias va='vi ~/.bash_aliases'
alias vb='vi ~/.bashrc'
alias vm='vi ~/.mutt/muttrc'

alias cm='cd ~/.mutt'
alias cdoc='cd ~/docs/docs-braque'
alias cdot='cd ~/dotfiles'
alias csrc='cd ~/src'
alias cdev='cd ~/devel'
# end .bash_aliases
