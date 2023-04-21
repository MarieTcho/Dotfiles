HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
zstyle :compinstall filename '/home/marie/.zshrc'

autoload -U promptinit; promptinit

# Completion
autoload -Uz compinit; compinit

#zstyle ':completion:*:descriptions' format '%B%d%b%u'

# End of lines added by compinstall
#
# alias
alias ls='ls --color=auto'
alias vim="nvim"
alias grep='grep --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias nf="neofetch"
alias i3conf='nvim ~/.config/i3/config'
alias polybarconf='nvim ~/.config/polybar/config'
alias config='/usr/bin/git --git-dir=$HOME/.config/ --work-tree=$HOME'

# Vim 4EVER
export EDITOR=/usr/bin/nvim
