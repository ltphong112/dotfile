eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

function command_not_found_handler {
  return 127
}

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=800
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt AUTO_CD

# aliases
alias ls='lsd'
alias n='nvim'
alias c='calc'
alias zz='cd ~'
alias g='cd "$(xplr --print-pwd-as-result)"'
alias x='exit'
alias oc='ouch compress'
alias od='ouch decompress'
alias ol='ouch list --tree'
alias man='man --pager=$PAGER'
function tree () {
  echo
  if [[ -z $1 ]]; then
    L=2
  else
    L=$1
  fi
  erd -L "$L" -I --suppress-size --threads 16 --layout inverted
}

# plugins
if [[ ! -f ${ZDOTDIR:-${HOME}}/.zcomet/bin/zcomet.zsh ]]; then
  command git clone https://github.com/agkozak/zcomet.git ${ZDOTDIR:-${HOME}}/.zcomet/bin
fi
source ${ZDOTDIR:-${HOME}}/.zcomet/bin/zcomet.zsh

zcomet load zsh-users/zsh-completions
zcomet load zsh-users/zsh-autosuggestions
zcomet load marlonrichert/zsh-autocomplete
zcomet load zsh-users/zsh-syntax-highlighting

autoload -U compinit; compinit

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# fix keys
bindkey -v
export KEYTIMEOUT=01
bindkey '^[[H'     vi-beginning-of-line
bindkey '^[[F'     vi-end-of-line
bindkey '^[[3~'    delete-char
bindkey '^[[1;5C'  forward-word   # C-left
bindkey '^[[1;5D'  backward-word  # C-right
bindkey '^[[1;5A'  history-incremental-search-backward # C-up
bindkey '^[[1;5B'  history-incremental-search-forward  # C-down
