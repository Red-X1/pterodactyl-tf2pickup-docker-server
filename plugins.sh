#!/bin/bash
set -e

cd $HOME/tf

# SteamWorks

wget -N -nv "https://github.com/KyleSanderson/SteamWorks/releases/download/1.2.3c/package-lin.tgz" -O "steamworks.tar.gz"
tar -xf steamworks.tar.gz --strip-components 1
rm steamworks.tar.gz

# Improved-Match-Timer

wget -N -nv "https://github.com/b4nnyBot/Progressive-Ruleset-Timer-Plugins/archive/master.zip" -O "improved-match-timer.zip"
unzip -o -qq improved-match-timer.zip
cp -r Progressive-Ruleset-Timer-Plugins-main/* ./
rm -r Progressive-Ruleset-Timer-Plugins-main
rm improved-match-timer.zip

# tf2-comp-fixes

wget -N -nv https://github.com/ldesgoui/tf2-comp-fixes/releases/download/v1.16.13/tf2-comp-fixes.zip
unzip -o -qq tf2-comp-fixes.zip
rm tf2-comp-fixes.zip

# RGL-server-resources-updater

wget -N -nv https://github.com/RGLgg/server-resources-updater/releases/download/v345/server-resources-updater.zip
unzip -o -qq server-resources-updater.zip
rm server-resources-updater.zip

# srctvplus

cd $HOME/tf/addons

wget -N -nv https://github.com/dalegaard/srctvplus/releases/download/v3.0/srctvplus.vdf
wget -N -nv https://github.com/dalegaard/srctvplus/releases/download/v3.0/srctvplus.so

# Curl

cd $HOME/tf/addons/sourcemod

wget -N -nv "https://github.com/sapphonie/SM-neocurl-ext/releases/download/v2.0.0-beta/sm-neocurl.zip"
unzip -o -qq sm-neocurl.zip
rm sm-neocurl.zip

# STAC anticheat

wget -N -nv "https://github.com/sapphonie/StAC-tf2/releases/download/v6.3.7/stac.zip"
unzip -o -qq stac.zip
rm stac.zip

# tf2rue

wget -N -nv "https://github.com/sapphonie/tf2rue/releases/download/v0.0.12/tf2rue.zip"
unzip -o -qq tf2rue.zip
rm tf2rue.zip

# System2

wget -N -nv "https://github.com/dordnung/System2/releases/download/v3.3.2/system2.zip"
unzip -o -qq system2.zip
rm system2.zip

# Medic stats, SupStats, LogsTF, RecordSTV, WaitForStv, AFK, RestoreScore, FixStvSlot and Updater
cd $HOME/tf/addons/sourcemod/plugins

wget -N -nv "https://github.com/F2/F2s-sourcemod-plugins/releases/download/20250728-1753698992295/f2-sourcemod-plugins.zip"
unzip -o -qq f2-sourcemod-plugins.zip
rm f2-sourcemod-plugins.zip

# WebRCON
wget -N -nv https://github.com/spiretf/webrcon/raw/master/plugin/webrcon.smx

# whitelist.tf downloader
wget -N -nv https://github.com/spiretf/sm_whitelist/raw/master/plugin/whitelisttf.smx

# map downloader
wget -N -nv https://github.com/spiretf/mapdownloader/raw/master/plugin/mapdownloader.smx

# demos.tf uploader
wget -N -nv https://github.com/demostf/plugin/raw/ba1b642b92585af142a885af7159fa652916c6e7/demostf.smx

# autoexec
wget -N -nv https://github.com/spiretf/autoexec/raw/master/plugin/autoexec.smx

## SdrConnect
wget -N -nv https://github.com/spiretf/sdrconnect/raw/main/plugin/sdrconnect.smx

## SetTeam
wget -N -nv https://github.com/spiretf/setteam/raw/master/plugin/setteam.smx

# stadium-sm-plugin

wget -N -nv https://github.com/tf2pickup-org/stadium-sm-plugin/raw/master/teams.smx

# connector

wget -N -nv https://github.com/tf2pickup-org/connector/releases/download/0.6.1/connector.smx

chmod 0664 *.smx

cd $HOME/tf

wget -N -nv https://github.com/l-Aad-l/updated-pause-plugin/releases/download/v1.6.2/updated-pause-plugin.zip
unzip -o -qq updated-pause-plugin.zip
rm updated-pause-plugin.zip

