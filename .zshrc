# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export GPG_TTY=$(tty)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="bira"
ZSH_THEME="spaceship"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  brew
  common-aliases
  npm
  bower
  osx
  z
  command-time
  you-should-use $plugins
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# aliases

alias zshrc="vim ~/.zshrc && source ~/.zshrc && clear"

unalias gr

alias gpm="gr @work git checkout master; gr @work git pull"
alias grst="gr @work status"
alias hosts="sudo vim /etc/hosts"
alias sshx="i2cssh"
alias fhere="find . -name "

alias svim='nvim -u ~/.SpaceVim/vimrc'
alias emacs='/usr/local/Cellar/emacs/26.2/bin/emacs'

alias get-papes="$HOME/personal/wallpaper/getimage.sh"
alias save-papes="$HOME/personal/wallpaper/saveimage.sh"
alias bounce_network="$HOME/personal/scripts/bounce_network"
alias ngrok="$HOME/ngrok"
alias ll='ls -lFah'

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

case $OSTYPE in
    darwin*)
        source $HOME/.profile  # Chef-.profile-Lendio
        [[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
        ;;
    *)
        ;;
esac

case $(uname -a) in 
    *Microsoft*) 
        unsetopt BG_NICE
        # ssh-agent auto-launch (0 = agent running with key; 1 = w/o key; 2 = not run.)
        agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)
        if   [ $agent_run_state = 2 ]; then
          eval $(ssh-agent -s)
          ssh-add ~/.ssh/id_rsa
        elif [ $agent_run_state = 1 ]; then
          ssh-add ~/.ssh/id_rsa
        fi
        ;; 
esac

# Set iTerm2 tab titles
tabTitle() { echo -ne "\033]0;"$*"\007"; }

# Always list directory contents and set title upon 'cd'
cd() { builtin cd "$@"; ls -lFah; tabTitle ${PWD##*/}; }

. <(gr completion)

i2-badge () { printf "\e]1337;SetBadgeFormat=%s\a" $(echo -n "$1" | base64) }

# Syntax highlighting
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zshexport GPG_TTY=$(tty)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
   [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
       eval "$("$BASE16_SHELL/profile_helper.sh")"export PATH=$PATH:$HOME/bin

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source ~/.iterm2_shell_integration.zsh

export GOPATH=$HOME/go

export PATH=$PATH:$HOME/bin:/usr/local/go/bin:$HOME/bin/scripts
