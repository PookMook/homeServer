#!/bin/sh

## Install ZFS

sudo apt install zfsutils-linux -y
sudo zpool import
sudo zpool import backup
sudo systemctl enable zfs-import-cache

## Install Samba

sudo apt install -y samba
cd ~/homeServer/
sudo cp samba/smb.conf /etc/samba/smb.conf
sudo zfs set sharesmb=on backup
sudo systemctl restart smbd nmbd

## Create Arthur_default network for docker

## TODO