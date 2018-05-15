alias l="ls -lh"

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export HISTCONTROL=ignoreboth:erasedups
# unlimited bash history
export HISTFILESIZE=
export HISTSIZE=

shopt -s histappend
export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
