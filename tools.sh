echo "================================================================================================================"
echo "============================================== Install Tools ==================================================="
echo "================================================================================================================"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source $HOME/.profile 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

echo " "
echo "======================caca-utils============================"
sudo apt-get install -y caca-utils 


echo "======================ghostscript=============================="
brew install -f ghostscript  


echo "======================imagemagick=============================="
brew install -f imagemagick  


echo "======================librsvg2-bin  ======================================"
sudo apt-get install -y librsvg2-bin  


echo "=========================ffmpeg==================================="
sudo apt-get install -y ffmpeg  


echo "===========================highlight================================="
sudo apt-get install -y highlight  


echo "======================atool======================================"
sudo apt-get install -y atool 


echo "======================tar======================================"
sudo apt-get install -y tar  


echo "=======================unrar====================================="
sudo apt-get install -y unrar  


echo "========================w3m===================================="
sudo apt-get install -y w3m  


echo "=========================poppler-utils  ==================================="
sudo apt-get install -y poppler-utils  


echo "========================djvulibre-bin ===================================="
sudo apt-get install -y djvulibre-bin 


echo "========================calibre ====================================" 
sudo apt-get install -y calibre  


echo "=========================mediainfo ==================================="
sudo apt-get install -y mediainfo 


echo "=========================odt2txt===================================" 
sudo apt-get install -y odt2txt  


echo "=======================jq====================================="
sudo apt-get install -y jq  


echo "=======================jupyterlab====================================="
pip install jupyterlab --quiet 


echo "========================nbconvert===================================="
pip install nbconvert --quiet 


echo "===========================fontforge================================="
sudo apt-get install -y fontforge 


echo "=========================openscad===================================" 
sudo apt-get install -y openscad 


echo "====================python3-neovim ========================================"
sudo apt-get install -y python3-neovim 


echo "========================python-jedi===================================="
sudo apt-get install -y python-jedi # no candidate


echo "======================lazygit======================================"
brew install -f lazygit  


echo "=========================lazydocker==================================="
brew install -f lazydocker 


echo "========================bpytop===================================="
brew install -f bpytop 


echo "========================ncdu===================================="
brew install -f ncdu 


echo "=======================jedi====================================="
pip3 install jedi --quiet 


echo "=========================exuberant-ctags ==================================="
sudo apt-get install -y exuberant-ctags 


echo "------------------------ Install npm , pyright, yarn, Nerd Font 'Source Code Pro' ------------------------"

source $HOME/.profile  

echo "--- wait 40 seconds ---" &&
sleep 40

echo "=========================nvm install  ==================================="
nvm install --lts 


echo "=========================npm pyright  ==================================="
npm i --silent --global pyright 


echo "=========================npm yarn  ==================================="
npm install --silent --global yarn 


echo "========================= npm source-code-pro Nerd Font  ==================================="
npm install --silent --global git://github.com/adobe-fonts/source-code-pro.git#release


echo "========================= tree-sitter-cli ==================================="
npm install --silent tree-sitter-cli


echo "========================= gdu  ==================================="
sudo add-apt-repository -y ppa:daniel-milde/gdu && sudo apt-get update && sudo apt-get install -y gdu


echo "========================= bottom  ==================================="
brew install bottom

