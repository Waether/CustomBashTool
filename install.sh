#!/bin/bash

#
## Project : CustomBashEnv
##
## Creator : Nathan Hautbois
##
## Contributors :
##
## Date : 24/11/2018
#

#
## Version 1.0
#

SRC=./ressources
SHR=/etc/share/CustomBash

rm -rf $SHR && mkdir -p $SHR

cp $SRC/bashrc $SHR/.bashrc
cp -rf $SRC/* $SHR/

groupadd -f custombash
chgrp -R custombash $SHR
chmod -R g+w $SHR
sudo find $SHR -type d -exec chmod 2775 {} \; 
sudo find $SHR -type f -exec chmod ug+rw {} \;

echo "Be sure to use this command for every users needing this bash env"
echo "sudo usermod -a -G custombash <some_user>"
echo "mv ~/.bashrc ~/.bashrc.backup && ln -s $SHR/.bashrc ~/.bashrc"
