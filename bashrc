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

# export CLOUDSDK_PYTHON=/usr/bin/python2


source '/home/nmartin/.git-flow-completion.bash'

# some flags for kernel compiling, and compiling in general
export CONCURRENCY_LEVEL=6
export CHOST="x86_64-pc-Linux-gnu"
export KCFLAGS="-march=bdver2 -O2 -pipe"
export KCPPFLAGS="-march=bdver2 -O2 -pipe"
export CFLAGS="-march=bdver2 -O2 -pipe"
export CXXFLAGS="$CFLAGS"
export APPEND_TO_VERSION=-`date +%Y%m%d%H%M`
export USE_CCACHE=1

# SCONS build flags
export SCONSFLAGS="-j7"

# cleanup wine fixme messages
export WINEDEBUG=fixme-all
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/nmartin/google-cloud-sdk/path.bash.inc' ]; then source '/home/nmartin/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/nmartin/google-cloud-sdk/completion.bash.inc' ]; then source '/home/nmartin/google-cloud-sdk/completion.bash.inc'; fi

###-begin-ng-completion###
#

# ng command completion script
#   This command supports 3 cases.
#   1. (Default case) It prints a common completion initialisation for both Bash and Zsh.
#      It is the result of either calling "ng completion" or "ng completion -a".
#   2. Produce Bash-only completion: "ng completion -b" or "ng completion --bash".
#   3. Produce Zsh-only completion: "ng completion -z" or "ng completion --zsh".
#
# Usage: . <(ng completion --bash) # place it appropriately in .bashrc or
#        . <(ng completion --zsh) # find a spot for it in .zshrc
#
_ng_completion() {
  local cword pword opts

  COMPREPLY=()
  cword=${COMP_WORDS[COMP_CWORD]}
  pword=${COMP_WORDS[COMP_CWORD - 1]}

  case ${pword} in
    ng|help) opts="--version -v b build completion doc e e2e eject g generate get help l lint new s serve server set t test v version xi18n" ;;
    b|build) opts="--aot --app --base-href --deploy-url --environment --extract-css --i18n-file --i18n-format --locale --output-hashing --output-path --poll --progress --sourcemaps --stats-json --target --vendor-chunk --verbose --watch -a -aot -bh -d -e -ec -i18nFile -i18nFormat -locale -oh -op -poll -pr -sm -statsJson -t -v -vc -w" ;;
    completion) opts="--all --bash --zsh -a -b -z" ;;
    e|e2e) opts="--aot --app --base-href --config --deploy-url --element-explorer --environment --extract-css --hmr --host --i18n-file --i18n-format --live-reload --live-reload-client --locale --open --output-hashing --output-path --poll --port --progress --proxy-config --serve --sourcemaps --specs --ssl --ssl-cert --ssl-key --target --vendor-chunk --verbose --watch --webdriver-update -H -a -aot -bh -c -d -e -ec -ee -hmr -i18nFile -i18nFormat -liveReloadClient -locale -lr -o -oh -op -p -pc -poll -pr -s -sm -sp -ssl -sslCert -sslKey -t -v -vc -w -wu" ;;
    eject) opts="--aot --app --base-href --deploy-url --environment --extract-css --force --i18n-file --i18n-format --locale --output-hashing --output-path --poll --progress --sourcemaps --target --vendor-chunk --verbose --watch -a -aot -bh -d -e -ec -force -i18nFile -i18nFormat -locale -oh -op -poll -pr -sm -t -v -vc -w" ;;
    g|generate) opts="--dry-run --verbose -d -v" ;;
    get) opts="--global -global" ;;
    l|lint) opts="--fix --force --format --type-check -fix -force -format -typeCheck" ;;
    new) opts="--directory --dry-run --inline-style --inline-template --link-cli --prefix --routing --skip-commit --skip-git --skip-install --skip-tests --source-dir --style --verbose -d -dir -is -it -lc -p -routing -sc -sd -sg -si -st -style -v" ;;
    s|serve|server) opts="--aot --app --base-href --deploy-url --environment --extract-css --hmr --host --i18n-file --i18n-format --live-reload --live-reload-client --locale --open --output-hashing --output-path --poll --port --progress --proxy-config --sourcemaps --ssl --ssl-cert --ssl-key --target --vendor-chunk --verbose --watch -H -a -aot -bh -d -e -ec -hmr -i18nFile -i18nFormat -liveReloadClient -locale -lr -o -oh -op -p -pc -poll -pr -sm -ssl -sslCert -sslKey -t -v -vc -w" ;;
    set) opts="--global -g" ;;
    t|test) opts="--app --browsers --code-coverage --colors --config --log-level --poll --port --progress --reporters --single-run --sourcemaps --watch -a -browsers -c -cc -colors -logLevel -poll -port -progress -reporters -sm -sr -w" ;;
    --version|-v|v|version) opts="--verbose -verbose" ;;
    xi18n) opts="--app --i18n-format --locale --out-file --output-path --progress --verbose -a -f -l -of -op -progress -verbose" ;;
    *) opts="" ;;
  esac

  COMPREPLY=( $(compgen -W '${opts}' -- $cword) )

  return 0
}

complete -o default -F _ng_completion ng
###-end-ng-completion###
function emulator { cd "$(dirname "$(which emulator)")" && ./emulator "$@"; }

###-tns-completion-start-###
if [ -f /home/nmartin/.tnsrc ]; then 
    source /home/nmartin/.tnsrc 
fi
###-tns-completion-end-###

