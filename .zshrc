# https://www.stuartellis.name/articles/mac-setup/
# I should remove this if I don't run into any problems, doesn't need to run more than once
#export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# load aliases from another file
source ~/.zsh/aliases

# configure emsdk (emscripten)
#export EMSDK_QUIET=1
#source "/Users/michael/code/tools/emsdk/emsdk_env.sh"

# zsh prompt configuration
export PROMPT="%Bcadenza%b %1~ %# "

# type ahead completion?
autoload bashcompinit && bashcompinit

# nvm setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Enable vi mode
bindkey -v

# enable hidden files in fzf results
# also, hide anything under node_modules or .git
export FZF_DEFAULT_COMMAND="find -L . \( -name node_modules -o -name .git \) -prune -o -print"


# Load Angular CLI autocompletion.
#source <(ng completion script)

export PATH="/usr/local/Cellar/openssl@3/3.1.3/bin:$PATH"
