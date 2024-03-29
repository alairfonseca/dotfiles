#quickly edit and source .zshrc
alias vz="nvim ~/.zshrc"
alias sz="source ~/.zshrc; echo '~/.zshrc sourced'"

# use yellow for directories
export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

# IP alias and functions
alias ip="ifconfig -a | egrep -A 7 '^en0' | grep inet | grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])' | head -n 1"
alias myip="curl -s http://checkip.dyndns.org/ | sed 's/[a-zA-Z<>/ :]//g'"

# Pretty print the PATH
alias path='echo; tr ":" "\n" <<< "$PATH"; echo;'

#case-insensitive autocomplete
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

#NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#JAVA
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include" #For compilers to find openjdk
export PATH="/usr/local/opt/icu4c/bin:$PATH"

export PATH="$HOME/.local/share/nvim/mason/bin/:$PATH"

source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#starship
eval "$(starship init zsh)"
