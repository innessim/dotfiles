## TIPS
1. Install miniconda.
```
   mkdir -p ~/miniconda3
   wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
   bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
   rm -rf ~/miniconda3/miniconda.sh
```
```
   ~/miniconda3/bin/conda init bash
```
   This example code is for the current version although updates should be checked for at this URL.
<pre>   https://docs.anaconda.com/free/miniconda/   </pre>

2. Create GitHub directory.
```
   mkdir github-repos
```

3. Go to and initialize an existing directory as a Git repository.
```
   cd github-repos
   git init
```

4. Clone existing repository via URL.
```
   git clone https://github.com/innessim/dotfiles.git
```

5. Run bash script to create symlinks (symbolic links) to dotfiles.
```
   bash dotfiles/scripts/create_symlinks.sh
```

6. Source bashrc.
```
   source ~/.bashrc
```

7. Copy colour scheme and syntax settings of text editor to ~/.vim.
```
   cp dotfiles/vim/colors/ dotfiles/vim/syntax/ ~/.vim -r
```

8. When making edits to GitHub files, create access token from GitHub web page when asked for authentification.
<pre>
   a. Generate access token.
      - Click profile icon in top right corner
      - Scroll down to "Settings"
      - Scroll down to "Developer settings"
      - Click "Personal access tokens"
      - Select "Tokens (classic)"
      - Click "Generate new token"
      - Select "Generate new token (classic)"
      - Name your token in "Note"
      - Select "no expiration"
      - Select "repo" in "Select scopes"
      - Scroll down and generate token

   b. When asked for authentification:
      - Username: my_username
      - Password: "Paste access token"
</pre>

Install additional software with conda.
```
   conda install conda-forge::mamba
```

### tmux resurrection
The tmux prefix in this `tmux.conf` is `Ctrl-a`.
#### Installing on new machine
Install tmux plugin manager (TPM):
```
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Create the resurrect directory:
```
   mkdir -p ~/.tmux/resurrect
```
Start tmux: `tmux` 

reload configuration: `Ctrl-a r`


and install the configured plugins if this does not happen automatically: `Ctrl-a Shift-I`

#### tmux
Tmux configuration is managed through this repository:
```
   ~/github-repos/dotfiles/tmux.conf
```
with symlink to:
```
   ~/.tmux.conf
```

#### Configuration
The `tmux.conf` includes personal key bindings and preferences, along with TPM and session persistence:
```
   # restore tmux sessions
   # TPM / sessions
   set -g @plugin 'tmux-plugins/tpm'
   set -g @plugin 'tmux-plugins/tmux-resurrect'
   set -g @plugin 'tmux-plugins/tmux-continuum'

   # Automatically save every 15 minutes and restore on tmux startup
   set -g @resurrect-dir '~/.tmux/resurrect'
   set -g @continuum-save-interval '15'
   set -g @continuum-restore 'on'

   # Initialize TPM (must be last)
   run '~/.tmux/plugins/tpm/tpm'
```
The tmux prefix in this `tmux.conf` is `Ctrl-a`.

#### Plugins
Plugins are managed with TPM:
> - `tmux-resurrect` — saves and restores tmux sessions across server restarts
> - `tmux-continuum` — automatically saves the tmux server state every 15 minutes and restores it when tmux starts

Plugins are installed separately under:
```
   ~/.tmux/plugins
```

#### Session persistence
Resurrect saves are stored locally in:
```
   ~/.tmux/resurrect/
```
This directory is intentionally not track by Git because the saved session state is specific to the machine.


The saved state includes multiple tmux sessions, as well as their windows, panes, working directories, and other session information.


To manually save the current tmux server state: `Ctrl-a Ctrl-s`


To manually restore it: `Ctrl-a Ctrl-r`


With Continuum enabled, the entire tmux server is automatically saved every 15 minutes. After a server restart, start tmux noramlly:
```
   tmux
```
This should automatically restore the saved sessions.


If automatic restoration does not occur, use: `Ctrl-a Ctrl-r`
















