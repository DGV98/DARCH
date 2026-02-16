# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
alias ls='ls --color=auto'
alias grep='grep --color=auto'
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
# End of lines configured by zsh-newuser-install


# fnm
FNM_PATH="/home/david/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# pnpm
export PNPM_HOME="/home/david/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="$HOME/.local/bin:$PATH"
alias dotfiles='git --git-dir=/home/david/.darch --work-tree=/home/david'
