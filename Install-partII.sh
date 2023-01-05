eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

bash <(curl -s https://raw.githubusercontent.com/arthurberzin/linux-setup/main/tools.sh)
bash <(curl -s https://raw.githubusercontent.com/arthurberzin/linux-setup/main/zsh.sh)
bash <(curl -s https://raw.githubusercontent.com/arthurberzin/linux-setup/main/ranger.sh)
bash <(curl -s https://raw.githubusercontent.com/arthurberzin/linux-setup/main/nvim.sh)

sudo apt autoremove

echo "================================================================================================================"
echo "=============================================== Finish ========================================================="
echo "================================================================================================================"

zsh

source $HOME/.zshrc

