for i in * .[^.]*; do
    file=${i##*/}
    if [ ${0##*/} != $file ] && [[ -f "./$file" ]]; then
        ln -s ~/dotfiles/$file ~/$file
    fi
done
