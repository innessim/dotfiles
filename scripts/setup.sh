## Thanks https://github.com/vsbuffalo/dotfiles2/blob/main/setup.sh
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`

## printing functions ##
function gecho {
  echo "${green}[message] $1${reset}"
}

function yecho {
  echo "${yellow}[note] $1${reset}"
}

function wecho {
  # red, but don't exit 1
  echo "${red}[error] $1${reset}"
}

function recho {
  echo "${red}[error] $1${reset}"
  exit 1
}

## install functions ##

# look for command line tool, if not install via homebrew
function install_brew {
  (command -v $1 > /dev/null  && gecho "$1 found...") || 
    (yecho "$1 not found, installing via homebrew..." && brew install $1)
}

# check for pre-req, fail if not found
function check_preq {
  (command -v $1 > /dev/null  && gecho "$1 found...") || 
    recho "$1 not found, install before proceeding."
}

# function for linking dotfiles
function linkdotfile {
  file="$1"
  if [ ! -e ~/$file -a ! -L ~/$file ]; then
      yecho "$file not found, linking..." >&2
      ln -sf ~/github-repos/dotfiles/$file ~/$file
  else
      gecho "$file found, ignoring..." >&2
  fi
}

# install Homebrew main programs if on a mac
	if [[ "$(uname)" == "Linux" ]]; then
    check_preq rg
    check_preq tmux
    check_preq vim
fi

# link over git stuff
linkdotfile .gitconfig
linkdotfile .bashrc
linkdotfile .bash_profile
linkdotfile .tmux.conf
linkdotfile .bootstrap
linkdotfile .vimrc
linkdotfile .setup
