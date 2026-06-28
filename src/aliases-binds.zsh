# By default run-help is an alias to man
# This makes it work on shell builtins and other shell features
autoload -Uz run-help
(( ${+aliases[run-help]} )) && unalias run-help
alias help=run-help

# [Ctrl-x, Ctrl-e] Multiline editor
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M emacs '^X^E' edit-command-line
bindkey -M viins '^X^E' edit-command-line
bindkey -M vicmd '^X^E' edit-command-line

# [Ctrl-RightArrow] - move forward one word
bindkey -M emacs '^[[1;5C' forward-word
bindkey -M viins '^[[1;5C' forward-word
bindkey -M vicmd '^[[1;5C' forward-word

# [Ctrl-LeftArrow] - move backward one word
bindkey -M emacs '^[[1;5D' backward-word
bindkey -M viins '^[[1;5D' backward-word
bindkey -M vicmd '^[[1;5D' backward-word

# [Delete] - delete forward
bindkey -M emacs "^[[3~" delete-char
bindkey -M viins "^[[3~" delete-char
bindkey -M vicmd "^[[3~" delete-char
bindkey -M emacs "^[3;5~" delete-char
bindkey -M viins "^[3;5~" delete-char
bindkey -M vicmd "^[3;5~" delete-char

# Colored man pages
alias man="LESS_TERMCAP_ue='[00m' \
    LESS_TERMCAP_se='[00m' \
    LESS_TERMCAP_mb='[01;31m' \
    LESS_TERMCAP_md='[01;31m' \
    LESS_TERMCAP_me='[00m' \
    LESS_TERMCAP_so='[01;33m[44m' \
    LESS_TERMCAP_us='[01;32m' \
    PAGER=/usr/bin/less \
    GROFF_NO_SGR=1 \
    man"

