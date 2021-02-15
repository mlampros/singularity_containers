#!/usr/bin/env bash


#-------------------------------------------------------
# use this script to increase the memory using swap when
# using a small AWS-cloud instance (memory < 2 GB)
#-------------------------------------------------------

cd
# free -m                                               # shows how much memory is available (default & swap)
# df -h                                                 # shows info for disc utilization
sudo dd if=/dev/zero of=/swapfile bs=1M count=1024
sudo mkswap /swapfile
sudo swapon /swapfile
sudo chmod 600 /swapfile
sudo sh -c "echo '/swapfile swap swap defaults 0 0' >> /etc/fstab"
df -h
sudo apt-get -y update
# free -m

