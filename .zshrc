export ZSH="${HOME}/.oh-my-zsh"

# Theme
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
SPACESHIP_DIR_PREFIX=""
SPACESHIP_DIR_TRUNC=1
SPACESHIP_DIR_TRUNC_REPO="false"
SPACESHIP_VENV_SHOW="true"
SPACESHIP_VENV_PREFIX="("
SPACESHIP_VENV_SUFFIX=") "
SPACESHIP_BATTERY_PREFIX=""
SPACESHIP_BATTERY_SUFFIX=" "
SPACESHIP_BATTERY_THRESHOLD=30
SPACESHIP_AWS_SHOW="false"
SPACESHIP_DOCKER_SHOW="false"
SPACESHIP_GIT_SYMBOL=""
SPACESHIP_GIT_PREFIX='['
SPACESHIP_GIT_SUFFIX="] "
SPACESHIP_GIT_STATUS_PREFIX=""
SPACESHIP_GIT_STATUS_SUFFIX=""
SPACESHIP_PYENV_PREFIX="["
SPACESHIP_PYENV_SUFFIX="] "
SPACESHIP_RUBY_PREFIX="["
SPACESHIP_RUBY_SUFFIX="] "
SPACESHIP_DOTNET_PREFIX="["
SPACESHIP_DOTNET_SUFFIX="] "
SPACESHIP_GOLANG_PREFIX="["
SPACESHIP_GOLANG_SUFFIX="] "
SPACESHIP_GOLANG_SYMBOL="🦫  "
SPACESHIP_PROMPT_ORDER=(battery venv dir git pyenv ruby dotnet golang char)

# Plugins
plugins=(git zsh-completions zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
setopt autopushd pushdsilent

# Direnv
eval "$(direnv hook zsh)"

# Virtualenv creation
# virtualenv="$HOME/codespace/.pyenv/versions/3.8.12/bin/python -m virtualenv"
# alias v3="pyenv local 3.8.12; $virtualenv -q -p $HOME/codespace/.pyenv/versions/3.8.12/bin/python env && echo Ready!"

# Virtualenv activation
# alias a="source env/bin/activate && echo Activated virtualenv!"
# alias d="deactivate && echo Deactivated virtualenv!"

# Docker aliases
alias dp="docker ps --format '{{.ID}} <= {{.Image}} ({{.RunningFor}})'"
alias ds="docker stop"

# Git shenanigans
alias gap="git add . && git commit --amend --no-edit && git push --force-with-lease"

pyclean () {
        find . -type f -name "*.py[co]" -delete
        find . -type d -name "__pycache__" -delete
}

__welcome="
Welcome Your Majesty, Peter 👑
"

echo "$__welcome"
