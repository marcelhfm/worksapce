# Install with brew

```
brew install zoxide zsh-syntax-highlighting eza bat starship
```

# .zshrc config

```bash
eval "$(starship init zsh)"

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Init zoxide
eval "$(zoxide init zsh)"
autoload -Uz compinit && compinit


# Nvm 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Alias
alias get-idf=". $HOME/esp/esp-idf/export.sh"
alias ls="eza --icons=always"
alias cd="z"

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

# Path
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN:$GOROOT/bin
export PATH="/Users/marcel/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/riscv-openocd/bin:$PATH"
export PATH="/opt/homebrew/opt/binutils/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/binutils/lib"
export CPPFLAGS="-I/opt/homebrew/opt/binutils/include"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
```



