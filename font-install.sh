echo "================================================================================================================
============================================== Install Font   ===================================================
================================================================================================================"

# https://bytexd.com/how-to-install-nerd-fonts-on-linux/
# https://www.nerdfonts.com/font-downloads
# https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/SourceCodePro.zip
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/SourceCodePro.zip

mkdir ~/.local/share/fonts

cp SourceCodePro.zip ~/.local/share/fonts/

rm SourceCodePro.zip

cd ~/.local/share/fonts

unzip SourceCodePro.zip

rm SourceCodePro.zip

sudo fc-cache -fv

cd ~

echo "-----------------------------------------------------------------------------------------------------
 Please visit https://bytexd.com/how-to-install-nerd-fonts-on-linux/ to complete Nerd Font Setting up.
-----------------------------------------------------------------------------------------------------"