export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Git completion
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit
source ~/.git-prompt.sh
autoload -U colors && colors
setopt PROMPT_SUBST ; PS1='%{$fg[blue]%}%~%{$fg[yellow]%}$(__git_ps1 " (%s)")%{$fg[white]%}-%{$fg[green]%}\$ %{$reset_color%}'

alias g=git
alias gd='git branch -D'
alias gm='git checkout master'
alias gp='git push -u origin HEAD'



### EVEN ENV STUFF

# Set up GOPATH
export GOPATH=$(go env GOPATH)
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Set up JAVA_HOME
export JAVA_HOME='/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home'

# For cocoapods
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
export PATH=$GEM_HOME/ruby/2.6.0/bin:$PATH

# Direnv
export DIRENV_LOG_FORMAT= # silent output
eval "$(direnv hook zsh)"

# Shortcuts

alias ec='cd ~/code/even-client'
alias es='cd $GOPATH/src/github.com/evenco/even-server'

