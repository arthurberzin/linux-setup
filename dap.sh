echo "================================================================================================================"
echo "==============================================       DAP     ==================================================="
echo "================================================================================================================"
#https://microsoft.github.io/debug-adapter-protocol/overview
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source $HOME/.profile 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

echo " "

echo "------------------------ @vscode/debugadapter  ------------------------"
npm install --silent -g @vscode/debugadapter



echo "------------------------ node-debug2  ------------------------"
npm install --silent -g node-debug2

echo "------------------------ node-debug2  ------------------------"
npm  --silent -g vscode-chrome-debug-core