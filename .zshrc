# PATHS
export PATH=/opt/homebrew/bin:$PATH


# NVM
# Need to install nvm to use this (https://github.com/nvm-sh/nvm?tab=readme-ov-file#install--update-script)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# GIT
# Need to install fzf to use this (brew install fzf)
gch() {
  git switch $(git branch --list | fzf | tr -d '[:space:]')
}


# ALIASES
alias ls="ls -G"
alias install-pkgs="nvm use && npm i" # or "nvm use && pnpm i"
alias run-project="npm run dev:production"
