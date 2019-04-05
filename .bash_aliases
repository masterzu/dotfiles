# .bash_aliases
# (c) pcht 199x - 2019
alias ls='ls -F --color'
alias l='ls -lh'
alias d='ls -al | egrep ^d'
alias dl='ls -al | egrep "^[d|l]"'
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

# raccourcis
alias vmc='vim ~/.mailcap'


# bash
alias sa='source ~/.bash_aliases'
alias va='vim ~/.bash_aliases'
alias vb='vim ~/.bashrc'

# dirs
alias cb='cd ~/bin'
alias cdoc='cd ~/docs/docs-braque'
alias cdot='cd ~/dotfiles'
alias csrc='cd ~/src'
alias csuck='cd ~/src/suckless/'
alias cdev='cd ~/devel'

# irssi
alias vic='vim ~/.irssi/config'

# mutt
alias cm='cd ~/.mutt'
alias vm='vim ~/.mutt/muttrc'
alias vma='vim ~/.mutt/alias'

# w3m
alias vw='vim ~/.w3m/config'

# fzf
alias vf='vim $(fzf --preview="head -$LINES {}")'
alias of='xdg-open "$(fzf --preview="head -$LINES {}")"'

#newsboat
alias nb=newsboat
alias cnb='cd  ~/.newsboat'
alias vnbu='vim ~/.newsboat/urls'
alias vnbc='vim ~/.newsboat/config'

#gcalcli
alias gcm='gcalcli --calendar Weather agenda'
alias gca='gcalcli agenda --military'
alias gcall='gcalcli --calendar travail --calendar ecoles --calendar agenda --calendar CGT calw --military'

# end .bash_aliases
