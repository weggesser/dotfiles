# Source Aliases
source ~/.config/zsh/aliases.zsh

# Source Project Specific Aliases and ENVs
# Drop zsh files with project specific data that should not be
# in version control into prj
DIR="$(pwd)/.config/zsh/prj/"
for file in $(ls $DIR); do
  source "$DIR/$file"
done

export PATH="$HOME/bin:$PATH"

export GPG_TTY=$(tty)

# ASDF
. "$HOME/.asdf/asdf.sh"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

export GOPATH="$HOME/go"
if [[ "$OSTYPE" == "darwin"* ]]; then
  export GOROOT="$(brew --prefix golang)/libexec"
else
  export GOROOT="/usr/lib/go"
fi

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

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
