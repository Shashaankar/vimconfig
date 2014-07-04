#!/bin/sh


# README: only for Ubuntu machines

echo "Installing environment"
apt-get install vim;
apt-get install ctags;
apt-get install gawk;
apt-get install libssl-dev;
apt-get install nfs-common;
apt-get install tftpd-hpa;
apt-get install minicom;
apt-get install rsync; 



# set up environment
# -- disable firewall
ufw disable

#network tools
echo "Installing network tools"
apt-get install wireshark
apt-get install iw
apt-get install tftp-hpa
apt-get install tftpd
sudo apt-get install libpcap0.8-dev libsqlite3-dev





# configure vim


# configure ctags


# configure cscope



# configure bash aliases


# configure tftp
mkdir /tftpboot
chmod 777 /tftpboot
# TODO change tftp directory path in /etc/default/tftpd-hpa 

