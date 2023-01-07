# Ubuntu setup

#### Install Common

```bash
sudo apt-get update && sudo apt-get install -y git && sudo apt-get install -y curl &&
bash <(curl -s https://raw.githubusercontent.com/arthurberzin/linux-setup/main/Install.sh)
```

###### follow [instraction](https://bytexd.com/how-to-install-nerd-fonts-on-linux/) to set [Nerd Forn](https://www.nerdfonts.com/#home)

#### Install Neovim

```bash
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" &&
bash <(curl -s https://raw.githubusercontent.com/arthurberzin/linux-setup/main/nvim.sh)
```

###### run `nvim` to complete setting up

#### Install Zsh

```bash
sudo apt-get install -y zsh && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```bash
bash <(curl -s https://raw.githubusercontent.com/arthurberzin/linux-setup/main/zsh.sh)
```
