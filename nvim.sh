echo "================================================================================================================"
echo "============================================== Install nvim   =================================================="
echo "================================================================================================================"


curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage &&
chmod u+x nvim.appimage &&
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

echo "============================backup conf =======================================#"
mv ~/.config/nvim ~/.config/nvim.bak

mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

echo "============================ Get Astrivim =======================================#"
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim




echo "============================ Setting Up =======================================#"
#https://astronvim.github.io/#-setup


#https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
nvim +':LspInstall -sync pyright ' +qa