#quickly edit and source .zshrc
alias v="nvim"
alias vz="nvim ~/.zshrc"
alias sz="source ~/.zshrc; echo '~/.zshrc sourced'"

# Pretty print the PATH
alias path='echo; tr ":" "\n" <<< "$PATH"; echo;'

# IP alias and functions
alias ip="ifconfig -a | egrep -A 7 '^en0' | grep inet | grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])' | head -n 1"
alias myip="curl -s http://checkip.dyndns.org/ | sed 's/[a-zA-Z<>/ :]//g'"

