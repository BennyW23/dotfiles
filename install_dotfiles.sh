for i in * .[^.]*; do
    file=${i##*/}
    if [ ${0##*/} != $file ] && [[ -f "./$file" ]]; then
        ln -s ./$file ~/$file
    fi
done
