export EDITOR=/usr/bin/vim

# MacPorts Installer addition on 2011-09-13_at_14:16:45: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

alias g="git"

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;36m\]"
WHITE="\[\033[0;00m\]"

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

# with date
# PS1="$BLUE\$(date \"+%m/%d %H:%M:%S\") $BLUE\w$YELLOW\$(__git_ps1)$WHITE-$GREEN\$ $WHITE"
PS1="$BLUE\w$YELLOW\$(__git_ps1)$WHITE-$GREEN\$ $WHITE"

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
