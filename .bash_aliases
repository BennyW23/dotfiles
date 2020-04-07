alias ll='ls -alh'
alias lt='du -sh * | sort -h'
alias count='find . -type f | wc -l'
alias cg='cd `git rev-parse --show-toplevel`'

function cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    ll
}
