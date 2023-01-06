echo "================================================================================================================"
echo "============================================== Install Base ==================================================="
echo "================================================================================================================"

sudo apt-get update 

echo "---------------------- install Homebrew ------------------------"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.profile &&
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.zprofile &&
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

echo "---------------------- install gcc ------------------------"
brew install -f gcc  


echo "------------------------ build-essential ------------------------"
sudo apt-get install -y build-essential 


echo "------------------------ python ------------------------"
sudo apt-get install -y python2  
sudo apt-get install -y python3  
sudo apt-get install -y python-pip 
sudo apt-get install -y python3-pip 
# sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 2
# sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 1
# sudo update-alternatives --config python
#      select 2.7


echo "------------------------ install nvm ------------------------"
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash 


cat <<EOT >> $HOME/.bashrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
EOT


cat <<EOT >> $HOME/.profile
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
EOT


source $HOME/.profile 


echo "------------------------ Install Dotnet  ------------------------"
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb &&
echo "--- wait 40 seconds ---" &&
sleep 40

sudo rm /var/cache/apt/archives/lock 
sudo rm /var/lib/dpkg/lock
sudo rm /var/lib/dpkg/lock-frontend
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt-get update &&
sudo apt-get install -y dotnet-sdk-7.0 

