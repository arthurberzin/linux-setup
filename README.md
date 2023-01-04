# Ubuntu setup

## Install [Brew](https://brew.sh/)

```bash
sudo apt-get update && sudo apt-get install -y git && sudo apt-get install -y curl;
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

###### Set env var

```bash
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.profile &&
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.zprofile &&
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

## Part I

```bash
bash <(curl -s https://raw.githubusercontent.com/arthurberzin/linux-setup/main/Install-partI.sh)
```

## Part II

```bash
bash <(curl -s https://raw.githubusercontent.com/arthurberzin/linux-setup/main/Install-partII.sh)
```
