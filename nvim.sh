echo "================================================================================================================"
echo "============================================== Install nvim   =================================================="
echo "================================================================================================================"

#https://github.com/neovim/neovim/wiki/Installing-Neovim#debian
#sudo apt-get install -y neovim  

curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage &&
chmod u+x nvim.appimage &&
./nvim.appimage --appimage-extract 
./squashfs-root/AppRun --version 
sudo mv squashfs-root /  
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim  

echo "====================== plug.vim ============================"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'  

echo "====================== clone https://github.com/arthurberzin/nvim ============================"
cd ~  
mkdir .confi  
cd .config  
mkdir nvim  
cd ~  
git clone https://github.com/arthurberzin/nvim ~/.config/nvim  

echo "====================== nvim +':PlugInstall --sync' +qa ============================"
nvim +':PlugInstall --sync' +qa  

echo "====================== coc.nvim Build ============================"
cd $HOME/.local/share/nvim/plugged/coc.nvim  
yarn install  
yarn build  
cd ~  
echo "====================== nvim +':PlugInstall --sync' +qa ============================"
nvim +':PlugInstall --sync' +qa  

echo "====================== nvim +':CocInstall ============================"
nvim +':CocInstall coc-omnisharp coc-html-css-support coc-docker coc-yaml coc-json coc-eslint coc-css coc-jedi coc-prettier coc-git coc-angular coc-csharp-ls -sync' +qa  

echo "====================== nvim +':CocUpdateSync ============================"
nvim +':CocUpdateSync' +qa 

