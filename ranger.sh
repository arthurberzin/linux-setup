echo "================================================================================================================"
echo "============================================== Install ranger =================================================="
echo "================================================================================================================"

sudo apt-get install -y ranger 
ranger --copy-config=all 

echo "====================== ranger_devicons ============================"
git clone https://github.com/alexanderjeurissen/ranger_devicons $HOME/.config/ranger/plugins/ranger_devicons 
echo "set preview_images true" >> $HOME/.config/ranger/rc.conf 
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf 
