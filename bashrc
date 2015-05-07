


#
# ~/.bashrc
#

# append to the history file, don't overwrite it
shopt -s histappend

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nano

shopt -s checkwinsize

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


PS1='[\u@\h \W]\$ '

export CLOUDSDK_PYTHON=/usr/bin/python2

# The next line updates PATH for the Google Cloud SDK.
source '/home/nmartin/Apps/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/home/nmartin/Apps/google-cloud-sdk/completion.bash.inc'


# some flags for kernel compiling, and compiling in general
export CONCURRENCY_LEVEL=6
export CHOST="x86_64-pc-Linux-gnu"
export KCFLAGS="-march=bdver2 -O2 -pipe"
export KCPPFLAGS="-march=bdver2 -O2 -pipe"
export CFLAGS="-march=bdver2 -O2 -pipe"
export CXXFLAGS="$CFLAGS"
export APPEND_TO_VERSION=-`date +%Y%m%d%H%M`
export USE_CCACHE=1
