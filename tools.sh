echo "================================================================================================================"
echo "============================================== Install Tools ==================================================="
echo "================================================================================================================"


sudo apt-get install -y caca-utils 
sudo 4
 install -s -f ghostscript  
sudo brew install -s -f imagemagick  
sudo apt-get install -y librsvg2-bin  
sudo apt-get install -y ffmpeg  
sudo apt-get install -y highlight  
sudo apt-get install -y atool  
sudo apt-get install -y tar  
sudo apt-get install -y unrar  
sudo apt-get install -y w3m  
sudo apt-get install -y poppler-utils  
sudo apt-get install -y djvulibre-bin  
sudo apt-get install -y calibre  
sudo apt-get install -y mediainfo  
sudo apt-get install -y odt2txt  
sudo apt-get install -y jq  
pip install jupyterlab --quiet 
pip install nbconvert --quiet 
sudo apt-get install -y fontforge  
sudo apt-get install -y openscad 
sudo apt-get install -y python3-neovim 
sudo apt-get install -y python-jedi 
sudo brew install -s -f lazygit  
sudo brew install -s -f lazydocker 
sudo brew install -s -f bpytop 
sudo brew install -s -f ncdu 
sudo brew install -s -f hashicorp/tap/terraform-ls 
pip3 install jedi --quiet 
sudo apt-get install -y exuberant-ctags 

echo "------------------------ Install npm , pyright, yarn ------------------------"
nvm install --lts 
npm i --silent --global pyright 
npm install --silent --global yarn 


echo "------------------------ Install csharp-ls  ------------------------"
sudo dotnet tool install --global csharp-ls 

#brew not found
#dotnet-sdk-7.0 not found
#dotnet not found