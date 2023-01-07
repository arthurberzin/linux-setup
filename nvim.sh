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



echo "========================= LspInstall  ==================================="
#https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
nvim +':LspInstall -sync pyright angularls arduino_language_server asm_lsp astro clangd csharp_ls omnisharp cssls dockerls eslint graphql html jsonls tsserver sumneko_lua marksman powershell_es sqls tailwindcss terraformls lemminx yamlls' +qa




echo "========================= TsInstall  ==================================="
#nvim-treesitter
#https://astronvim.github.io/#install-language-parser
#https://github.com/nvim-treesitter/nvim-treesitter
#https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
nvim +':TSInstall -sync bash c c_sharp cpp css dockerfile git_rebase gitattributes gitcommit gitignore javascript html json lua markdown meson python sql terraform typescript yaml yang vim' +qa


echo "========================= DapInstall  ==================================="
#https://github.com/ravenxrz/DAPInstall.nvim#list-of-debuggers
nvim +':LspInstall -sync ccppr_vsc lua dnetcs chrome jsnode markdown' +qa


echo "========================= PackerSync  ==================================="
nvim +':PackerClean -sync' +qa
nvim +':PackerSync -sync' +qa


echo "========================= AstroUpdate  ==================================="
nvim +':AstroUpdate -sync' +qa
