# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nano ~/.zshrc"
alias c="clear"
alias -s py=code
alias -s md=typora
alias pip='pip3'
alias python='python3'
alias nz='nano ~/.zshrc'
alias sz='source ~/.zshrc'
alias update='sudo apt update -y && sudo apt upgrade -y'
alias pycharm='cd ~/pyCharm && ./bin/pycharm.sh &'
alias winbox='cd ~/Schreibtisch && wine winbox64.exe &'
alias hg="history | grep"
alias clip="xclip -selection clipboard < "
alias top="bpytop"
alias footer="byobu"
alias -g isntall="install"
alias h="howdoi -c -n 5"
search(){cd ~/cs; grep -i -r -A 1 "$1" ./*; cd -;}
gitall(){
    git add .
    git commit -m "${1:-update}" # if no argument is given, update is used
    git push
}
#example(){ echo Your arg was $1 . }
# alias ohmyzsh="mate ~/.oh-my-zsh"
#source /usr/share/powerlevel9k/powerlevel9k.zsh-theme

# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

function cd() {
  builtin cd "$@" || return  # Ensure cd works normally

  if [[ -z "$VIRTUAL_ENV" ]] ; then
    ## If 'venv' folder is found, activate the virtual environment
    if [[ -d ./venv ]] ; then
      source ./venv/bin/activate
    fi
  else
    ## Check if the current folder still belongs to the earlier VIRTUAL_ENV folder
    ## If not, deactivate
    parentdir="$(dirname "$VIRTUAL_ENV")"
    if [[ "$PWD"/ != "$parentdir"/* ]] ; then
      deactivate
    fi
  fi

  ## Check if .env file exists and source it
  if [[ -f .env ]] ; then
    source .env
  fi
}

