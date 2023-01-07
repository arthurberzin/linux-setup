echo "================================================================================================================"
echo "==============================================       LSP     ==================================================="
echo "================================================================================================================"
#https://microsoft.github.io/language-server-protocol/overviews/lsp/overview/
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source $HOME/.profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

echo " "

echo "------------------------ Install python ls ------------------------"
pip install python-language-server --quiet

echo "------------------------ Install csharp-ls  ------------------------"
sudo dotnet tool install --global csharp-ls
sudo dotnet tool install --global csharp-language-server-protocol

#git clone git://github.com/OmniSharp/omnisharp-vim ~/.vim/pack/plugins/start/omnisharp-vim

echo "=========================terraform-ls==================================="
brew install -f hashicorp/tap/terraform-ls

echo "========================= lua-language-server  ==================================="
brew install -f lua-language-server

echo "========================= typescript typescript-language-server  ==================================="
npm install --silent -g typescript typescript-language-server

echo "========================= HTML/CSS/JSON/ESLint  ==================================="
npm i --silent -g vscode-languageserver
npm i --silent -g vscode-langservers-extracted
npm i --silent -g vscode-languageclient

echo "========================= html  ==================================="
npm install --save vscode-html-languageservice

echo "========================= CSS/LESS/SAS  ==================================="
npm install --silent --global vscode-css-languageserver-bin

echo "========================= bash-language-server ==================================="
npm i --silent -g bash-language-server

echo "========================= yaml-language-server ==================================="
brew install -f yaml-language-server

echo "========================= sql-language-server ==================================="
brew install -f sql-language-server

echo "========================= azure-pipelines-language-server ==================================="
npm i --silent -g azure-pipelines-language-server

echo "========================= vim language-server ==================================="
yarn global add vim-language-server

echo "========================= dockerfile-language-server ==================================="
npm install --silent -g dockerfile-language-server-nodejs

echo "========================= xml language-server need auth ?!  ==================================="
# https://github.com/microclimate-dev2ops/xml-language-server.git
#cd xml-language-server/server/xml-server
#./mvnw clean package
#cd ~
