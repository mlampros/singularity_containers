#!/usr/bin/env bash


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



# then install Singularity
#-------------------------

git clone https://github.com/singularityware/singularity.git

cd singularity

./autogen.sh

./configure --prefix=/usr/local

make

sudo make install

cd


