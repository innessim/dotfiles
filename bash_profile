if [ ! -L "$HOME/.bashrc" ]; then
    ln -sf "$HOME/github-repos/dotfiles/bashrc" "$HOME/.bashrc"
fi

if [ ! -L "$HOME/.bash_profile" ]; then
    ln -sf "$HOME/github-repos/dotfiles/bash_profile" "$HOME/.bash_profile"
fi

if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
fi

