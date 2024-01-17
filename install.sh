#!/bin/bash
#
#

echo "Instalando metasploit..."
apt update && apt install wget -y
mkdir -p $PREFIX/etc/apt/sources.list.d
wget https://raw.githubusercontent.com/ivam3/termux-packages/gh-pages/ivam3-termux-packages.list -O $PREFIX/etc/apt/sources.list.d/ivam3-termux-packages.list
apt update && apt update -y
apt install metasploit-framework -y

# Resolver erro:
# Could not find nokogiri-1.14.1 in any of the sources Run 'bundle install' to install missing gems.
echo "Resolvendo erros..."
apt update && apt upgrade -y
cd $PREFIX/opt/metasploit-framework
bundle install
