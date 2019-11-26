echo ">> .bash_profile"

## rust cargo
test -d HOME/.cargo/bin && PATH="$HOME/.cargo/bin:$PATH"

## nodejs
test -d ~/.local_node/bin && PATH="$HOME/.local_node/bin:$PATH"

# golang env
export GOPATH=/home/patrick/devel/golang
PATH="$GOPATH/bin:$PATH"		     ## bin installed from `go install`
PATH="/home/patrick/src/golang/go/bin:$PATH" ## install from binaries

# rvm
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# nix
if [ -e /home/patrick/.nix-profile/etc/profile.d/nix.sh ]; then . /home/patrick/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

test -s $HOME/.bashrc && source $HOME/.bashrc

export PATH=".:$HOME/bin:$HOME/.local/bin:$PATH"

echo "<< .bash_profile"
