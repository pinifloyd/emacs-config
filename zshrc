[ -f $HOME/.profile ] && . $HOME/.profile

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=$HOME/.zsh_history
setopt append_history
setopt inc_append_history
setopt extended_history
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_ignore_space
setopt hist_no_store
setopt hist_no_functions
setopt no_hist_beep
setopt hist_save_no_dups

setopt no_automenu

setopt prompt_subst

autoload -U compinit && compinit
autoload -U select-word-style && select-word-style bash
autoload -U colors && colors
autoload -U vcs_info

zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a] '
zstyle ':vcs_info:*' formats       '(%s)-[%b] '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b'

precmd() {
  print -Pn "\e]0;%~\a"
  vcs_info
}

preexec() {
  print -Pn "\e]0;%~ :: $1\a"
}

PROMPT='%B%F{blue}%~%f%b ${vcs_info_msg_0_}%B%F{blue}%#%f%b '
RPROMPT=$'%{\e[1;34m%}%T%{\e[0m%}' # right prompt with time

eval `dircolors` && zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

alias ls='ls --color=always'
alias ll='ls -lah'
alias grep='grep --color=always'
alias trt='touch tmp/restart.txt'

export EDITOR='nano'

if [[ -s $HOME/.rvm/scripts/rvm ]] ; then source $HOME/.rvm/scripts/rvm ; fi
