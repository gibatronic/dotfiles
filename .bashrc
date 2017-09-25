alias ls='ls -1AGh'

complete -cf man
complete -cf sudo
complete -cf which

. /usr/local/etc/bash_completion.d/git-completion.bash
. /usr/local/etc/bash_completion.d/git-prompt.sh
. ~/.make-completion

export PROMPT_COMMAND='echo -en "\033]0;${PWD/#$HOME/~}`__git_ps1 \" ‹%s›\"`\007"'
export PS1='$ '
