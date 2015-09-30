# PATH

csp() {
  local IFS=:
  echo "$*"
}

PATHS=(
  /usr/local/bin
  /usr/bin
  /bin
  /usr/local/sbin
  /usr/sbin
  /sbin
)

export PATH=$(csp ${PATHS[@]})

# aliases

alias hosts='subl /etc/hosts'
alias ls='ls -1A'

# autocomplete

complete -cf man
complete -cf sudo
complete -cf which
source "${HOME}/.git-completion"

# PROMPT_COMMAND and PS1

source "${HOME}/.git-prompt"
export PROMPT_COMMAND='echo -en "\033]0;${PWD/#$HOME/~}`__git_ps1 \" ‹%s›\"`\007"'
export PS1='$ '
