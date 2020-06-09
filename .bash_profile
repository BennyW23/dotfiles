# history size
export HISTFILESIZE=1000000
export HISTSIZE=1000000

# concurrent history across tabs
shopt -s histappend
export HISTCONTROL=ignoreboth
export PROMPT_COMMAND="history -n; history -w; history -c; history -r"
tac "$HISTFILE" | awk '!x[$0]++' > /tmp/tmpfile  &&
                tac /tmp/tmpfile > "$HISTFILE"
rm /tmp/tmpfile

# execute common shell config actions
if [ -e $HOME/.common_shell_config ]; then
    source $HOME/.common_shell_config
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
