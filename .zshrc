HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
zstyle :compinstall filename '/home/marie/.zshrc'

autoload -U promptinit; promptinit

# Completion
autoload -Uz compinit; compinit
prompt pure

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
alias vimconf='nvim ~/.config/nvim/init.vim'

# Vim 4EVER
export EDITOR=/usr/bin/nvim

# ctrl+R: history search
bindkey '^R' history-incremental-search-backward

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search
