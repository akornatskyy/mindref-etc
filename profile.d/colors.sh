
if [ "$BASH" ]; then
    # set a fancy prompt (non-color, unless we know we "want" color)
    case "$TERM" in
        linux | xterm-color) color_prompt=yes;;
    esac

    if [ "$color_prompt" = yes ]; then
        export PS1='\[\033[01;31m\]\h\[\033[00m\]:\[\033[01;34m\]\w\
\[\033[00m\]\$ '
    else
        export PS1='\h:\w\$ '
    fi

    unset color_prompt
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'

