# Metasploit-Instalador
Instalador metasploit framework

```
mkdir -p $PREFIX/etc/apt/sources.list.d;apt install wget -y;wget https://raw.githubusercontent.com/ivam3/termux-packages/gh-pages/ivam3-termux-packages.list -O $PREFIX/etc/apt/sources.list.d/ivam3-termux-packages.list;apt update && apt upgrade -y;apt install metasploit-framework -y
```

### Resolver erro:
```
apt update && apt upgrade -y && cd $PREFIX/opt/metasploit-framework && bundle install
```
