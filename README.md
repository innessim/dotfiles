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

3. Initialize an existing directory as a Git repository.
```
   ~/github-repos$ git init
```

4. Clone existing repository via URL.
```
   ~/github-repos$ git clone https://github.com/innessim/dotfiles.git
```

5. Run bash script to create symlinks (symbolic links) to dotfiles.
```
   ~/github-repos$ bash dotfiles/scripts/create_symlinks.sh
```

6. Source bashrc.
```
   source ~/.bashrc
```

7. Copy colour scheme and syntax settings of text editor to ~/.vim.
```
   ~/github-repos$ cp dotfiles/vim/colors/ dotfiles/vim/syntax/ ~/.vim -r
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
