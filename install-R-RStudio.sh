#!/bin/bash
        # Sudhakar Kumar (FOSSEE, IIT Bombay)
	# Script for installing R and RStudio v 1.1.463 on Ubuntu 16.04 
        # A few dependencies will be required, if using different versions of Ubuntu 
        # https://support.rstudio.com/hc/en-us/articles/206569407-Older-Versions-of-RStudio


echo '======== Checking Internet connection ========'
wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ $? -eq 0 ]]; then
        echo "Internet is working!"
else
        echo "Internet is not working! Please connect to Internet and try again."
        exit 1
fi

echo '======== Updating the packages ========'
printf 'y\n' | sudo apt-get update

echo '======== Installing wget ========'
printf 'y\n' | sudo apt-get install g++ wget

echo '======== Installing R-base ========'
sudo apt-get install -y r-base

echo '======== Changing directory ========'
cd

echo '======== Downloading RStudio ========'
wget http://download1.rstudio.org/rstudio-1.1.463-amd64.deb
sudo apt-get -f install 

echo '======== Installing gdeb-i ========'
sudo apt-get install -y gdebi-core

echo '======== Installing RStudio ========'
sudo gdebi rstudio-1.1.463-amd64.deb

echo '======== Removing the debian file ========'
rm rstudio-1.1.463-amd64.deb

echo '======== Finished ========'
