echo "================================================================================================================"
echo "==============================================       LSP     ==================================================="
echo "================================================================================================================"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source $HOME/.profile 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

echo " "
echo "------------------------ Install csharp-ls  ------------------------"
sudo dotnet tool install --global csharp-ls 


echo "=========================terraform-ls==================================="
brew install -f hashicorp/tap/terraform-ls 


echo "========================= lua-language-server  ==================================="
brew install lua-language-server


echo "========================= typescript typescript-language-server  ==================================="
npm install --silent -g typescript typescript-language-server
