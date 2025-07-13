# Auto-restore .bashrc symlink if overwritten
if [ ! -L "$HOME/.bashrc" ]; then
    echo "[$(date)] Restoring ~/.bashrc symlink" >> "$HOME/bashrc_relink.log"
    ln -sf "$HOME/github-repos/dotfiles/bashrc" "$HOME/.bashrc"
fi

# Source the (restored or still-intact) .bashrc
if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
fi

