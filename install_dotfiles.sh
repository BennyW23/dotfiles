if ! command -v git >/dev/null 2>&1; then
    printf '%s\n' 'git is required but not installed' >&2
    exit 1
fi

printf '%s\n' 'linking dotfiles'

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
SELF="$(basename "$0")"

for i in "${DOTFILES_DIR}"/* "${DOTFILES_DIR}"/.[!.]*; do
    file="$(basename "$i")"

    if [ "$file" = "$SELF" ] || [ ! -f "$i" ]; then
        continue
    fi

    target="${HOME}/${file}"
    if [ -e "$target" ] || [ -L "$target" ]; then
        printf '%s\n' "skipping ${file} (already exists)"
        continue
    fi

    ln -s "${DOTFILES_DIR}/${file}" "$target"
    printf '%s\n' "linked ${file}"
done

ZSH_CUSTOM="${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}"

printf '\n%s\n' 'installing spaceship'
if [ -d "${ZSH_CUSTOM}/themes/spaceship-prompt" ]; then
    printf '%s\n' 'skipping spaceship-prompt (already cloned)'
else
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git "${ZSH_CUSTOM}/themes/spaceship-prompt" --depth=1
fi
if [ ! -e "${ZSH_CUSTOM}/themes/spaceship.zsh-theme" ]; then
    ln -s "${ZSH_CUSTOM}/themes/spaceship-prompt/spaceship.zsh-theme" "${ZSH_CUSTOM}/themes/spaceship.zsh-theme"
fi

printf '\n%s\n' 'installing zsh-autosuggestions'
if [ -d "${ZSH_CUSTOM}/plugins/zsh-autosuggestions" ]; then
    printf '%s\n' 'skipping zsh-autosuggestions (already cloned)'
else
    git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM}/plugins/zsh-autosuggestions"
fi

printf '\n%s\n' 'installing zsh-syntax-highlighting'
if [ -d "${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting" ]; then
    printf '%s\n' 'skipping zsh-syntax-highlighting (already cloned)'
else
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting"
fi
