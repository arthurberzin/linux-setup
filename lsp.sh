echo "================================================================================================================"
echo "==============================================       LSP     ==================================================="
echo "================================================================================================================"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source $HOME/.profile 

echo " "
echo "------------------------ Install csharp-ls  ------------------------"
sudo dotnet tool install --global csharp-ls 


echo "=========================terraform-ls==================================="
brew install -f hashicorp/tap/terraform-ls 


echo "========================= lua-language-server  ==================================="
brew install lua-language-server


echo "========================= typescript typescript-language-server  ==================================="
npm install --silent -g typescript typescript-language-server
