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

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/jre/bin:$PATH

# activate aliases
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

yes "" | head -n $LINES
