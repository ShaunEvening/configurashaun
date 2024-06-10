# ZSH Config

fpath=(~/.config/zsh/functions $fpath)

autoload -U ~/.config/zsh/functions/*(:t)

# Aliases
source ~/.config/aliases.sh

# Python 3.9
export PATH=$PATH:/Users/shaun/Library/Python/3.9/bin

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
