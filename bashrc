# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

export EDITOR=/usr/bin/vim

export PATH=$PATH:/opt/bin:/opt/sbin

alias g="git"

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;36m\]"
WHITE="\[\033[0;00m\]"

if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi

# Prompt
if [ -n "$SSH_CLIENT" ]; then
  text="[${HOSTNAME%%.*}]"
fi

# with date
# PS1="$BLUE\$(date \"+%m/%d %H:%M:%S\") $BLUE\w$YELLOW\$(__git_ps1)$WHITE-$GREEN\$ $WHITE"
export PS1="$RED${text} $BLUE\w$YELLOW\$(__git_ps1)$WHITE-$GREEN\$ $WHITE"

