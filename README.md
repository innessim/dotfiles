<b>TIPS</b>

1. Create GitHub directory
   <pre>
     <code>
       mkdir github-repos
     </code>
   </pre>

2. Initialize an existing directory as a Git repository
   <pre>
     <code>
       ~/github-repos$ git init
     </code>
   </pre>

3. Clone existing repository via URL
   <pre>
     <code>
       ~/github-repos$ git clone https://github.com/innessim/dotfiles.git
     </code>
   </pre>

4. Run bash script to create symlinks (symbolic links) to dotfiles
   <pre>
     <code>
       ~/github-repos$ bash dotfiles/scripts/create_symlinks.sh
     </code>
   </pre>

5. Source bashrc
   <pre>
     <code>
       source ~/.bashrc
     </code>
   </pre>

6. Copy colour scheme and syntax settings of text editor to ~/.vim
   <pre>
     <code>
       ~/github-repos$ cp dotfiles/vim/colors/ dotfiles/vim/syntax/ ~/.vim -r
     </code>
   </pre>
