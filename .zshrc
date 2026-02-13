# zsh Prompt
# Enable dynamic updates so the line resizes with the window
setopt prompt_subst

# Line 1: The horizontal divider (using a standard box-drawing character)
# We use %F{242} for a clean gray, and ${(l:$COLUMNS::─:)} to fill the width
PROMPT='%F{242}${(l:$COLUMNS::─:)}%f'$'\n'

# Line 2: Full path in Cyan
PROMPT+='%F{cyan}%~%f'$'\n'

# Line 3: Fire emoji and privilege level
#PROMPT+='🔥 %# '
# Line 3: Privilege level
PROMPT+='%# '

# Enable vi mode
bindkey -v
