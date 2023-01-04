echo "================================================================================================================"
echo "============================================== Install zsh   ==================================================="
echo "================================================================================================================"


: > $HOME/.zshrc ;
echo 'export ZSH="$HOME/.oh-my-zsh"' >> $HOME/.zshrc;
echo 'export TERM=xterm-256color' >> $HOME/.zshrc;
echo 'ZSH_THEME="robbyrussell"' >> $HOME/.zshrc;
echo 'zstyle ":omz:update" mode auto '  >> $HOME/.zshrc;
echo 'zstyle ":omz:update" frequency 30' >> $HOME/.zshrc;
echo 'ENABLE_CORRECTION="true"' >> $HOME/.zshrc;
echo 'HIST_STAMPS="dd/mm/yyyy"' >> $HOME/.zshrc;
echo 'plugins=(  git  bundler  vscode  dotenv  macos  rake  rbenv  ruby)' >> $HOME/.zshrc;

echo 'export PATH="/usr/local/bin/w3mimgdisplayr:$PATH"' >> $HOME/.zshrc;

#install
sudo apt-get update && sudo apt-get upgrade && sudo apt-get install zsh;
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";


echo 'zinit load zdharma-continuum/history-search-multi-word' >> $HOME/.zshrc;
echo 'zinit light zsh-users/zsh-autosuggestions' >> $HOME/.zshrc;
echo 'zinit light zsh-users/zsh-completions' >> $HOME/.zshrc;
echo 'zinit light zdharma-continuum/fast-syntax-highlighting' >> $HOME/.zshrc;

#install theme
sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt";
sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme";
#Install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)";

echo 'source $ZSH/oh-my-zsh.sh' >> $HOME/.zshrc;

echo 'export VISUAL=nvim;' >> $HOME/.zshrc;
echo 'export EDITOR=nvim;' >> $HOME/.zshrc;


echo 'export NVM_DIR="$HOME/.nvm"' >> $HOME/.zshrc;
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> $HOME/.zshrc;
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> $HOME/.zshrc;
echo 'clear' >> $HOME/.zshrc;
echo 'cd ~' >> $HOME/.zshrc;