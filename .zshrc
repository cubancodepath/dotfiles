export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"

# Plugins (must be defined BEFORE sourcing oh-my-zsh.sh)
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  colored-man-pages
  python
  npm
  docker
  conda
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias cls="clear"
alias pip='python -m pip'  # Forzar uso del pip correcto



# >>> conda initialize >>> 
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <

# fnm (Node Version Manager) - DESPUÉS de conda
if [ -d "/opt/homebrew/opt/fnm/bin" ]; then
  export PATH="/opt/homebrew/opt/fnm/bin:$PATH"
  eval "$(fnm env --use-on-cd)"
fi

# bun - DESPUÉS de conda y fnm
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# SSH key
ssh-add ~/.ssh/id_ed25519_git 2>/dev/null
