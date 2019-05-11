#!/bin/bash
	# Sudhakar Kumar (FOSSEE, IIT Bombay)
	# Script for removing R and RStudio on Ubuntu 

echo '======== Removing r-base ========'
sudo apt-get remove -y r-base 

echo '======== Removing r-base-core ========'
sudo apt-get remove -y r-base-core 

echo '======== Removing RStudio ========'
sudo apt-get remove -y rstudio 

echo '======== Removing dependencies ========'
sudo apt-get autoremove 

echo '======== Finished ========'

