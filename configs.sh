#!/bin/bash
set -e

cd $HOME/tf/cfg

#copy default server config if not already present
cp -n /server.cfg.template ./server.cfg

#create empty map cycle to stop map rotation
printf "" >> ./mapcycle.txt

wget -N -nv "https://github.com/ETF2L/gameserver-configs/releases/latest/download/etf2l_configs.zip"
unzip -o -qq etf2l_configs.zip

wget -N -nv "https://github.com/CoolstuffTF2/Ultitrio/archive/refs/tags/v3.2.1.zip"
unzip -o -qq v3.2.1.zip

rm -r Ultitrio Hammer Assets

rm *.zip
