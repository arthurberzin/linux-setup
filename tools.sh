echo "================================================================================================================"
echo "============================================== Install Tools ==================================================="
echo "================================================================================================================"

sudo apt-get update;
sudo apt-get install -y git;
sudo apt-get install -y build-essential;
sudo apt-get install -y curl;

sudo apt-get install -y python2 ;
sudo apt-get install -y python3 ;
sudo apt-get install -y python-pip;
sudo apt-get install -y python3-pip;

# sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 2
# sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 1
# sudo update-alternatives --config python
#      select 2.7


bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> $HOME/.zprofile;
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.zprofile;
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)";
sudo brew install -s -f gcc ;
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash;
echo 'export NVM_DIR="$HOME/.nvm"' >> $HOME/.bashrc;
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> $HOME/.bashrc;
sudo apt-get install -y caca-utils;
sudo brew install -s -f ghostscript ;
sudo brew install -s -f imagemagick ;
sudo apt-get install -y librsvg2-bin ;
sudo apt-get install -y ffmpeg ;
sudo apt-get install -y highlight ;
sudo apt-get install -y atool ;
sudo apt-get install -y tar ;
sudo apt-get install -y unrar ;
sudo apt-get install -y w3m ;
sudo apt-get install -y poppler-utils ;
sudo apt-get install -y djvulibre-bin ;
sudo apt-get install -y calibre ;
sudo apt-get install -y mediainfo ;
sudo apt-get install -y odt2txt ;
sudo apt-get install -y jq ;
sudo pip install jupyterlab --quiet;
sudo pip install nbconvert --quiet;
sudo apt-get install -y fontforge ;
sudo apt-get install -y openscad;
sudo apt-get install -y python3-neovim;
sudo apt-get install -y python-jedi;
sudo brew install -s -f lazygit ;
sudo brew install -s -f lazydocker;
sudo brew install -s -f bpytop;
sudo brew install -s -f ncdu;
sudo brew install -s -f hashicorp/tap/terraform-ls;
sudo pip3 install jedi --quiet;
sudo apt-get install -y exuberant-ctags;

#check is npm aveiloble
sudo nvm install --lts;
sudo npm i --silent --global pyright;
sudo npm install --silent --global yarn;

#Install Dotnet
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb;
sudo dpkg -i packages-microsoft-prod.deb;
rm packages-microsoft-prod.deb;
sudo apt-get install -y dotnet-sdk-7.0;
sudo dotnet tool install --global csharp-ls;