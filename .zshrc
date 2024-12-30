if [ "$TMUX" = "" ]; then tmux; fi

eval "$(starship init zsh)"


HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY

PATH=$PATH:~/.local/bin
PATH=$PATH:~/go/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export TERM=xterm-256color

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
[[ $commands[kubectl] ]] && source <(kubectl completion zsh) # add autocomplete permanently to your zsh shell

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/usr/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/usr/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/usr/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/usr/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/mysql-client@8.4/bin:$PATH"
