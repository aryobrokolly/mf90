#!/bin/ash
# Installation script by ARYO.
#Youtube Tutorial: https://bit.ly/aryochannel

DIR=/usr/bin


finish(){
clear
	echo ""
    echo "INSTALL SUCCESSFULLY ;)"
    echo ""
    echo "Untuk Menjalankan Ketik mf90 dan enter di terminal"
    sleep 3
    echo ""
    echo "SALAM SEDULURAN"
    echo ""
    echo ""
}

download_files()
{
    clear
    echo "Update and install dependency"
    sleep 2
    clear
    opkg update && opkg install xxd
    clear
   echo "Downloading files from repo MF90..."
    sleep 2
    clear
    wget -O $DIR/mf90 https://raw.githubusercontent.com/aryobrokolly/scrvp/main/log/issue/mf90 && chmod +x $DIR/mf90
    wget -O $DIR/modpesmf90 https://raw.githubusercontent.com/aryobrokolly/scrvp/main/log/modpesmf90 && chmod +x $DIR/modpesmf90
    finish
}

echo ""
echo "Install Script code from repo Aryo Brokolly."

while true; do
    read -p "This will download the files into $DIR. Do you want to continue (y/n)? " yn
    case $yn in
        [Yy]* ) download_files; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer 'y' or 'n'.";;
    esac
done
