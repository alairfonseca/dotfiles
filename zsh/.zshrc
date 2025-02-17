if [ -f ~/.config/zsh/aliases.zsh ]; then
    source ~/.config/zsh/aliases.zsh
else
    print "404: ~/.zsh/aliases.zsh not found."
fi

# use yellow for directories
export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

#case-insensitive autocomplete
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

#NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#NODE
#export PATH="$HOME/.nvm/versions/node/v23.7.0/bin/node:$PATH"

#JAVA
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include" #For compilers to find openjdk
export PATH="/usr/local/opt/icu4c/bin:$PATH"

export PATH="$HOME/.local/share/nvim/mason/bin/:$PATH"

#GHOSTTY
# export XDG_CONFIG_HOME="$HOME"

source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#starship
eval "$(starship init zsh)"
