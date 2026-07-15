alias ls='ls --color=auto'
alias l='exa --icons'
alias lt='exa --tree --icons'
alias la='exa -a --icons'
alias lat='exa -a --tree --icons'
alias ll='exa -l --icons'
alias llt='exa -l --tree --icons'
alias lla='exa -la --icons'
alias llat='exa -la --tree --icons'

alias w='wiki-search'
alias wh='wiki-search-html'

alias p='sudo pacman -S'
alias pS='sudo pacman -sS'
alias py='sudo pacman -Sy'
alias pR='sudo pacman -R'
alias puy='sudo pacman -Suyy'
alias pU="sudo pacman -U"

alias t='tmux new -s normal'
alias ta='tmux a'
alias tas='tmux a -t'
alias ts='tmux ls'
alias tk='tmux kill-session -t'
alias tn='tmux new -s'

alias nw='nmcli dev wifi'
alias nc='nmcli dev wifi con'
alias ns='nmcli dev status'

alias y='yay -S '
alias yr='yay -R'
alias yy='yay -Sy'
alias ys='yay -sS'
alias yuy='yay -Suy'

alias mpva='mpv --no-audio-display'

# alias gc='git commit -a'
# alias gC='git clone'
# alias gs='git status'
# alias ga='git add'
# alias gp='git push'
# alias gP='git pull'
# alias gi='git init'
# alias gS='git stash'

PS1='[\u@\h \W]\$ '

export PATH=$HOME/.local/bin:$HOME/.local/scripts:$HOME/.symfony5/bin:$HOME/mobile_dev/flutter/bin/:$HOME/.local/npm/bin:$PATH:$HOME/go/bin/
export CDPATH=:$HOME:$HOME/.dotfiles:$HOME/repos:$HOME/repos/personal/:$HOME/.dotfiles/.config:$HOME/Documents/:$HOME/Documents/books/:$CDPATH
export PGDATA=/var/lib/postgres/data
export PGUSER=gbl13
export VISUAL=nvim
export EDITOR=nvim
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin

export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME

export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/emulator

## Enable the subsequent settings only in interactive sessions
#case $- in
#  *i*) ;;
#    *) return;;
#esac

set -o vi
#. "$HOME/.cargo/env"

#export PATH=$HOME/tools/adb/platform-tools:$PATH
#export LD_LIBRARY_PATH=$HOME/repos/spfashtool:$LD_LIBRARY_PATH
