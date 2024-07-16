# Source Aliases
source ~/.config/zsh/aliases.zsh

export PATH="$HOME/bin:$PATH"

export GPG_TTY=$(tty)
# PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

export GOPATH="$HOME/go"
export GOROOT="/usr/lib/go"

export XDG_CONFIG_HOME="$HOME/.config"

plugin=(pyenv)

eval "$(pyenv init -)"


eval "$(oh-my-posh init zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/star.omp.json)"
# Oh My Posh prompt
# Ruby Version Manager - RBenv
export PATH="$HOME/.rbenv/bin:/usr/local/bin:$HOME/bin:$PATH"
eval "$(rbenv init - zsh)"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
