echo "================================================================================================================"
echo "============================================== Install zsh   ==================================================="
echo "================================================================================================================"

#install
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install -y zsh 

: > $HOME/.zshrc  
echo 'export ZSH="$HOME/.oh-my-zsh"' >> $HOME/.zshrc 
echo ' ' >> $HOME/.zshrc 
echo 'export TERM=xterm-256color' >> $HOME/.zshrc 
echo ' ' >> $HOME/.zshrc 
echo 'ZSH_THEME="spaceship"' >> $HOME/.zshrc 
echo ' ' >> $HOME/.zshrc 
echo 'zstyle ":omz:update" mode auto '  >> $HOME/.zshrc 
echo ' ' >> $HOME/.zshrc 
echo 'zstyle ":omz:update" frequency 30' >> $HOME/.zshrc 
echo ' ' >> $HOME/.zshrc 
echo 'ENABLE_CORRECTION="true"' >> $HOME/.zshrc 
echo ' ' >> $HOME/.zshrc 
echo 'HIST_STAMPS="dd/mm/yyyy"' >> $HOME/.zshrc 
echo ' ' >> $HOME/.zshrc 
echo 'plugins=( git  bundler vscode docker npm macos rake rbenv ruby terraform yarn grunt python pip docker-compose kubectl minikube)' >> $HOME/.zshrc 
echo ' ' >> $HOME/.zshrc 
echo 'export PATH="/usr/local/bin/w3mimgdisplayr:$PATH"' >> $HOME/.zshrc 
echo ' ' >> $HOME/.zshrc 

#Install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)" 

echo ' ' >> $HOME/.zshrc 
echo 'zinit load zdharma-continuum/history-search-multi-word' >> $HOME/.zshrc 
echo 'zinit light zsh-users/zsh-autosuggestions' >> $HOME/.zshrc 
echo 'zinit light zsh-users/zsh-completions' >> $HOME/.zshrc 
echo 'zinit light zdharma-continuum/fast-syntax-highlighting' >> $HOME/.zshrc 
echo ' ' >> $HOME/.zshrc 

echo 'source $ZSH/oh-my-zsh.sh' >> $HOME/.zshrc 
echo ' ' >> $HOME/.zshrc 
echo 'export VISUAL=nvim ' >> $HOME/.zshrc 
echo 'export EDITOR=nvim ' >> $HOME/.zshrc 
echo ' ' >> $HOME/.zshrc 
echo 'export NVM_DIR="$HOME/.nvm"' >> $HOME/.zshrc 
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> $HOME/.zshrc 
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> $HOME/.zshrc 
echo ' ' >> $HOME/.zshrc 
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.zshrc
echo ' ' >> $HOME/.zshrc 
echo 'clear' >> $HOME/.zshrc 
echo 'cd ~' >> $HOME/.zshrc 

#ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 