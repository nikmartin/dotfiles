### begin-keybindings
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "\e[3~" delete-char


autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "\e[A" up-line-or-beginning-search # Up
bindkey "\e[B" down-line-or-beginning-search # Down


### end-keybindings



###-tns-completion-start-###
if [ -f /home/nmartin/.tnsrc ]; then 
    source /home/nmartin/.tnsrc 
fi
###-tns-completion-end-###

###-begin-ionic-completion-###

if type compdef &>/dev/null; then
  __ionic() {
    compadd -- $(ionic completion -- "${words[@]}" 2>/dev/null)
  }

  compdef __ionic ionic
fi

###-end-ionic-completion-###
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=3000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nmartin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# add VCS information
autoload -Uz vcs_info
precmd() { vcs_info }


# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '/(%b)'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n@${PWD/#$HOME/~}${vcs_info_msg_0_}>'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/nmartin/google-cloud-sdk/path.zsh.inc' ]; then 
  source '/home/nmartin/google-cloud-sdk/path.zsh.inc'; 
fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/nmartin/google-cloud-sdk/completion.zsh.inc' ]; then 
  source '/home/nmartin/google-cloud-sdk/completion.zsh.inc'; 
fi

# include a localprofile file that sources some private variables
if [ -f '/home/nmartin/dotfiles/localprofile' ]; then 
  source '/home/nmartin/dotfiles/localprofile'; 
fi