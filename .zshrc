# PATHS
export PATH=/opt/homebrew/bin:$PATH


# NVM
# Need to install nvm to use this (https://github.com/nvm-sh/nvm?tab=readme-ov-file#install--update-script)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Mise
export MISE_DATA_DIR="~/.local/share/mise"
eval "$(~/.local/bin/mise activate zsh)"
eval "$(~/.local/bin/mise install)"


# GIT
# Need to install fzf to use this (brew install fzf)
gch() {
  git switch $(git branch --list | fzf | tr -d '[:space:]')
}


# ALIASES
alias ls="ls -G"
alias run-bun="bun run dev:production"
alias run-pnpm="pnpm run dev:production"
alias run-npm="npm run dev:production"
