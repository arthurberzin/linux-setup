echo "================================================================================================================"
echo "============================================== Install zsh   ==================================================="
echo "================================================================================================================"

#Install zsh and ohmyzsh
sudo apt-get install -y zsh && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

: >$HOME/.zshrc

# Update zshrc
cat <<EOT >>$HOME/.zshrc

export ZSH="\$HOME/.oh-my-zsh"

export TERM=xterm-256color

ZSH_THEME="robbyrussell"
zstyle ":omz:update" mode auto 
zstyle ":omz:update" frequency 30
ENABLE_CORRECTION="true"
HIST_STAMPS="dd/mm/yyyy"

plugins=( 
    git  
    bundler 
    vscode 
    docker 
    npm 
    macos 
    rake 
    rbenv 
    ruby 
    terraform 
    yarn 
    grunt 
    python 
    pip 
    docker-compose 
    kubectl 
    minikube )

export PATH="/usr/local/bin/w3mimgdisplayr:\$PATH"

EOT

#Install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Update zshrc
cat <<EOT >>$HOME/.zshrc

zinit load zdharma-continuum/history-search-multi-word
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma-continuum/fast-syntax-highlighting

source \$ZSH/oh-my-zsh.sh

export VISUAL=nvim 
export EDITOR=nvim


export NVM_DIR="\$HOME/.nvm"
[ -s "\$NVM_DIR/nvm.sh" ] && \. "\$NVM_DIR/nvm.sh"
[ -s "\$NVM_DIR/bash_completion" ] && \. "\$NVM_DIR/bash_completion"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


source "\$HOME/.cargo/env"

clear
cd ~

EOT
