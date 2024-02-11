#!/bin/bash
#
#

echo "Instalando metasploit..."
apt update && apt install wget -y
dir=$PREFIX/etc/apt/sources.list.d
[ ! -d $dir ] && mkdir -p $dir
wget https://raw.githubusercontent.com/ivam3/termux-packages/gh-pages/ivam3-termux-packages.list -O $dir/ivam3-termux-packages.list
apt update && apt update -y
apt install metasploit-framework -y

# Resolver erro:
# Could not find nokogiri-1.14.1 in any of the sources Run 'bundle install' to install missing gems.
echo "Resolvendo erros..."
apt update && apt upgrade -y
cd $PREFIX/opt/metasploit-framework
bundle install
