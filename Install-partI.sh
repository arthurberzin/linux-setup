echo "---------------------- install gcc ------------------------"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install -f gcc  

sudo apt-get update 
#sudo apt-get install -y git 
echo "------------------------ build-essential ------------------------"
sudo apt-get install -y build-essential 
#sudo apt install -y nodejs 
#sudo apt-get install -y curl 
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

echo 'export NVM_DIR="$HOME/.nvm"' >> $HOME/.bashrc 
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> $HOME/.bashrc 
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> $HOME/.bashrc 


echo 'export NVM_DIR="$HOME/.nvm"' >> $HOME/.profile 
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> $HOME/.profile 
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> $HOME/.profile 
echo "------------------------ Install Dotnet  ------------------------"

 
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb &&
echo "--- wait 20 seconds ---" &&
sleep 20

sudo rm /var/lib/dpkg/lock-frontend
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo rm /var/cache/apt/archives/lock 

sudo apt-get update &&
sudo apt-get install -y dotnet-sdk-7.0 