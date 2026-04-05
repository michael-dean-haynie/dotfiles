# --- Feature Flags ----------------------------- #
typeset FEATURE_PROMPT=fireDirUser      # default | fire | fireDirUser | firePathUser | nlPathNlFireUser 
typeset FEATURE_VI_MODE=true            # true | false
typeset FEATURE_ZSH_SYNTAX_HL=true      # true | false
typeset FEATURE_FZF=true                # true | false

# --- FEATURE_PROMPT   -------------------------- #
if [[ $FEATURE_PROMPT == fire ]]; then
  PROMPT='🔥 '
elif [[ $FEATURE_PROMPT == fireDirUser ]]; then
  PROMPT='🔥 %1~ %# '
elif [[ $FEATURE_PROMPT == firePathUser ]]; then
  PROMPT='🔥 %~ %# '
elif [[ $FEATURE_PROMPT == nlPathNlFireUser ]]; then
  PROMPT=$'\n''%~'$'\n''🔥 %# '
else
  # use default zsh prompt
fi

# --- FEATURE_VI_MODE   -------------------------- #
if $FEATURE_VI_MODE; then
  # built-in vi mode (kinda lame but doesn't conflict with fzf)
  bindkey -v
fi

# --- FEATURE_FZF   ----------------------------- #
if $FEATURE_FZF; then
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
                                                                                                                                                                                                                                                              
  # For path completion (files) - e.g. vim **<TAB>
  _fzf_compgen_path() {                                                                                                                                                                                                                                       
    fd --hidden --follow --exclude .git . "$1"
  }                                                                                                                                                                                                                                                           
   
  # For directory completion - e.g. cd **<TAB>                                                                                                                                                                                                                
  _fzf_compgen_dir() {
    fd --type d --hidden --follow --exclude .git . "$1"                                                                                                                                                                                                       
  }

  source <(fzf --zsh) # fzf shell integration
fi

# --- Aliases ------------------------------------ #
alias n=nvim
alias nv=nvim
alias k=kubectl

# --- Node Version Manager   --------------------- #
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.local/bin:$PATH"

# --- Homebrew (specifically for python3) -------- #
export PATH="/opt/homebrew/bin:$PATH"

# --- FEATURE_ZSH_SYNTAX_HL   -------------------- #
if $FEATURE_ZSH_SYNTAX_HL; then
  # Must go at the end of .zshrc
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
