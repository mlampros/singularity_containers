#!/usr/bin/env bash


#---------------------------
# first install requirements
#---------------------------

export LC_ALL=C

sudo apt-get -y update 

# keep the default answer in case that a prompt appears, https://askubuntu.com/questions/146921/how-do-i-apt-get-y-dist-upgrade-without-a-grub-config-prompt
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade

sudo apt-get install debootstrap libarchive-dev squashfs-tools

sudo apt-get install -y libtool m4 automake && sudo apt-get install -y python-pip

sudo pip install --upgrade pip setuptools

sudo pip install -U numpy

sudo apt-get update



#-------------------------
# then install Singularity      [ BE AWARE that on Ubuntu singularity can be also installed using : sudo apt-get install -y singularity-container , see: https://singularity.lbl.gov/install-linux ] 
#-------------------------

# References : https://github.com/singularityware/singularity-userdocs/blob/master/installation.rst#install-on-linux, https://github.com/singularityware/singularity/releases
# Beginning from version 3.0.0 the 'Go' programming language is required


sudo apt-get update && sudo apt-get install -y build-essential libssl-dev uuid-dev libgpgme11-dev

VERSION=2.6.0                # last stable release before version 3.0.0

wget https://github.com/singularityware/singularity/releases/download/$VERSION/singularity-$VERSION.tar.gz

tar xvf singularity-$VERSION.tar.gz

cd singularity-$VERSION

./configure --prefix=/usr/local

make

sudo make install

cd


